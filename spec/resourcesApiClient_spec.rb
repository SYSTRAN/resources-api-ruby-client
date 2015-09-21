require 'rspec'
require_relative '../lib/resourcesApiClient'
require 'json'

describe "ResourcesApiClient" do
  before :all do
    ResourcesApiClient::Swagger.configure do |configuration|
      configuration.host = "﻿https://platform.systran.net:8904"
      if (File.exists?(("./key.txt")))
      key = File.read("./key.txt", :encoding => 'UTF-8')
        if (key.length > 0)
          configuration.key = key
        else
          puts "The key.txt file is empty"
        end
      else
        puts"The key.txt file doesn't exists"
      end

    end

  end
  describe "Configuration" do
    it "assures the user has a correct client configuration" do
      expect(ResourcesApiClient::Swagger.configuration.key.length).to be_between(10, 100)
    end
  end


  describe "DictionaryApi" do
    it "Lookups words from a source language to a target language." do
      result = ResourcesApiClient::DictionaryApi.resources_dictionary_lookup_get("en", "fr", "lookup")
      expect(result.outputs).not_to be_empty
    end
    it "Lists language pairs in which lookup is supported." do
      result = ResourcesApiClient::DictionaryApi.resources_dictionary_lookup_supported_languages_get
      expect(result.language_pairs).not_to be_empty
    end
    it "Adds a new dictionary." do
      input = '{ "dictionary":{ "sourceLang":"en", "name":"testRubyClient", "targetLangs":"fr", "comments":"This dictionary has been created for ruby client testing purposes", "type":""} }'
      result = ResourcesApiClient::DictionaryApi.resources_dictionary_add_post(JSON.parse(input))
      expect(result.added).not_to be_nil
    end

    it "Adds a new entry to an existing dictionary." do
      entry_add_body = '{ "entry": { "sourceLang": "en", "targetLang": "fr", "source": "test", "target": "test", "type": "", "sourcePos": "", "targetPos": "", "priority": ""} }'
      request = ResourcesApiClient::DictionaryApi.resources_dictionary_list_post
      to_be_updated = request.dictionaries.find {|s| s.name == "testRubyClient" }
      result = ResourcesApiClient::DictionaryApi.resources_dictionary_entry_add_post(to_be_updated.id, JSON.parse(entry_add_body))
      expect(result).not_to be_nil
    end
    it "Updates an entry in an existing dictionary." do

      request = ResourcesApiClient::DictionaryApi.resources_dictionary_list_post
      to_list = request.dictionaries.find {|s| s.name == "testRubyClient" }
      entries_list = ResourcesApiClient::DictionaryApi.resources_dictionary_entry_list_post(to_list.id)
      entry_update_body = ' {"sourceId": "'+entries_list.entries[0].source_id+'", "targetId": "'+entries_list.entries[0].target_id+'", "sourceVid": 0, "targetVid": 0, "update": { "sourceLang": "en", "targetLang": "fr", "source": "example", "target": "exemple", "type": "", "sourcePos": "", "targetPos": "", "priority": "" } }'
      result = ResourcesApiClient::DictionaryApi.resources_dictionary_entry_update_post(to_list.id, JSON.parse(entry_update_body))
      expect(result.source_id).not_to be_nil
    end
    it "Lists the dictionaries." do
      result = ResourcesApiClient::DictionaryApi.resources_dictionary_list_post
      expect(result.dictionaries).not_to be_empty
    end
    it "Updates an existing dictionary." do
      dictionary_update_body = '{ "dictionary": { "sourceLang":"en", "name":"testRubyClient", "targetLangs":"fr", "comments":"This dictionary has been updated for ruby client testing purposes","type":""} }'
      request = ResourcesApiClient::DictionaryApi.resources_dictionary_list_post
      to_be_updated = request.dictionaries.find {|s| s.name == "testRubyClient" }
      result = ResourcesApiClient::DictionaryApi.resources_dictionary_update_post(to_be_updated.id, JSON.parse(dictionary_update_body))
      expect(result.updated).not_to be_nil
    end
    it "List entries for a specific dictionary." do
      request = ResourcesApiClient::DictionaryApi.resources_dictionary_list_post
      to_list = request.dictionaries.find {|s| s.name == "testRubyClient" }
      result = ResourcesApiClient::DictionaryApi.resources_dictionary_entry_list_post(to_list.id)
      expect(result.entries).not_to be_empty
    end


    it "Removes an entry in an existing dictionary." do

      request = ResourcesApiClient::DictionaryApi.resources_dictionary_list_post
      to_list = request.dictionaries.find {|s| s.name == "testRubyClient" }
      entries_list = ResourcesApiClient::DictionaryApi.resources_dictionary_entry_list_post(to_list.id)
      entry_remove_body = '{ "entry": { "sourceId": "'+entries_list.entries[0].source_id+'", "targetId": "'+entries_list.entries[0].target_id+'", "sourceVid": 0, "targetVid": 0} }'
      result = ResourcesApiClient::DictionaryApi.resources_dictionary_entry_remove_post(to_list.id, JSON.parse(entry_remove_body))
      expect(result).not_to be_nil
    end
    it "Imports entries from a file to an already created dictionary." do
      request = ResourcesApiClient::DictionaryApi.resources_dictionary_list_post
      import_target = request.dictionaries.find {|s| s.name == "testRubyClient" }
      begin
      result = ResourcesApiClient::DictionaryApi.resources_dictionary_entry_import_post(import_target.id, "en", {:inputFile => File.open("./spec/entries.txt","r")})
      rescue Exception => e
      puts e.message
      end
      expect(result).to be_nil
    end
    it "Removes an existing dictionary." do
      request = ResourcesApiClient::DictionaryApi.resources_dictionary_list_post
      to_be_deleted = request.dictionaries.find {|s| s.name == "testRubyClient" }
      begin
      result = ResourcesApiClient::DictionaryApi.resources_dictionary_remove_post(to_be_deleted.id)
      rescue Exception => e
      puts e.message
      end
      expect(result).to be_nil
    end

  end

  describe "CorpusApi" do
    it "Lists available corpora. " do
      result = ResourcesApiClient::CorpusApi.resources_corpus_list_get
      expect(result.files).not_to be_empty
    end
    it "Adds a new empty corpus. " do
      result = ResourcesApiClient::CorpusApi.resources_corpus_add_post("testRubyClient", {:lang => "fr"})
      expect(result.corpus).not_to be_nil
    end
    it "Add a new corpus from an existing corpus. " do
      result = ResourcesApiClient::CorpusApi.resources_corpus_list_get
      expect(result.files).not_to be_empty
    end
    it "Check if a corpus exists " do
      result = ResourcesApiClient::CorpusApi.resources_corpus_exists_get("/testRubyClient")
      expect(result).not_to be_nil
    end
    it "Get detailed information about a corpus. " do
      request = ResourcesApiClient::CorpusApi.resources_corpus_list_get
      to_detail = request.files.find {|s| s.name == "/testRubyClient" }
      result = ResourcesApiClient::CorpusApi.resources_corpus_details_get(to_detail.id)
      expect(result.corpus).not_to be_nil
    end

    it "Update properties of a corpus." do
      request = ResourcesApiClient::CorpusApi.resources_corpus_list_get
      to_update = request.files.find {|s| s.name == "/testRubyClient" }
      result = ResourcesApiClient::CorpusApi.resources_corpus_update_post(to_update.id, {:tag => 'deleteMe'})
      expect(result).not_to be_nil
    end
    it "Download a corpus in an expected format." do
      request = ResourcesApiClient::CorpusApi.resources_corpus_list_get
      to_export = request.files.find {|s| s.name == "/testRubyClient" }
      result = ResourcesApiClient::CorpusApi.resources_corpus_export_get(to_export.id)
      expect(result).to be_an_instance_of(String)
    end
    it "List segments in a corpus." do
      request = ResourcesApiClient::CorpusApi.resources_corpus_list_get
      to_list = request.files.find {|s| s.name == "/testRubyClient" }
      result = ResourcesApiClient::CorpusApi.resources_corpus_segment_list_get(to_list.id)
      expect(result).not_to be_nil
    end
    it "Add segments in a corpus." do
      request = ResourcesApiClient::CorpusApi.resources_corpus_list_get
      to_add = request.files.find {|s| s.name == "/testRubyClient" }
      segments_add_body =  '{ "corpusId": "'+to_add.id+'", "segments": [ { "lang": "fr", "source": "Exemple de traduction", "targets": [ { "lang": "en", "target": "Translation example" }, { "lang": "en", "target": "Example of translation" } ] } ] }'
      result = ResourcesApiClient::CorpusApi.resources_corpus_segment_add_post(JSON.parse(segments_add_body))
      expect(result).not_to be_nil
    end

    it "Update a segment in a corpus." do
      request = ResourcesApiClient::CorpusApi.resources_corpus_list_get
      to_update = request.files.find {|s| s.name == "/testRubyClient" }
      result = ResourcesApiClient::CorpusApi.resources_corpus_segment_list_get(to_update.id)
      puts result.segments[0].id
      result = ResourcesApiClient::CorpusApi.resources_corpus_segment_update_post(to_update.id, result.segments[0].id, {:source => "illustration"})
      expect(result.updated).not_to be_nil
    end
    it "Add targets to a segment in a corpus." do


      request = ResourcesApiClient::CorpusApi.resources_corpus_list_get
      to_update = request.files.find {|s| s.name == "/testRubyClient" }
      result = ResourcesApiClient::CorpusApi.resources_corpus_segment_list_get(to_update.id)
      target_body = '{ "corpusId": "'+to_update.id+'", "segId":  "'+result.segments[0].id+'", "targets": [ { "lang": "en", "target": "added segment one" }, { "lang": "en", "target": "added segment two" }]}'

      result = ResourcesApiClient::CorpusApi.resources_corpus_segment_target_add_post(JSON.parse(target_body))
      expect(result).not_to be_nil
    end
    it "Find sentences in the corpus that match the input text from a given threshold." do
      request = ResourcesApiClient::CorpusApi.resources_corpus_list_get
      to_match = request.files.find {|s| s.name == "/testRubyClient" }
      result = ResourcesApiClient::CorpusApi.resources_corpus_match_get(to_match.id, "test", "fr", "en")
      expect(result).not_to be_nil
    end
    it "Delete segments in a corpus." do
      request = ResourcesApiClient::CorpusApi.resources_corpus_list_get
      to_delete = request.files.find {|s| s.name == "/testRubyClient" }
      result = ResourcesApiClient::CorpusApi.resources_corpus_segment_list_get(to_delete.id)
      result = ResourcesApiClient::CorpusApi.resources_corpus_segment_delete_post(to_delete.id, result.segments[0].id)

      expect(result.nb_deleted).not_to be_nil
    end
    it "Delete a corpus." do
    request = ResourcesApiClient::CorpusApi.resources_corpus_list_get
    to_delete = request.files.find {|s| s.name == "/testRubyClient" }
    result = ResourcesApiClient::CorpusApi.resources_corpus_delete_post(to_delete.id)
    expect(result).not_to be_nil
  end
end

end

