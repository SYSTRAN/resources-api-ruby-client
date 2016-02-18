require "uri"

module ResourcesApiClient
  class DictionaryApi
    basePath = "https://platformapi-stag.systran.net:8904/"
    # apiInvoker = APIInvoker

    # Add dictionary
    # Add a new dictionary.
    # @param input Input with dictionary information
    # @param [Hash] opts the optional parameters
    # @return [DictionaryAddResponse]
    def self.resources_dictionary_add_post(input, opts = {})
      
      # verify the required parameter 'input' is set
      raise "Missing the required parameter 'input' when calling resources_dictionary_add_post" if input.nil?
      

      # resource path
      path = "/resources/dictionary/add".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = []
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = Swagger::Request.object_to_http_body(input)
      

      auth_names = ['accessToken', 'apiKey']
      response = Swagger::Request.new(:POST, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
      obj = DictionaryAddResponse.new() and obj.build_from_hash(response)
    end

    # Add an entry
    # Add a new entry to an existing dictionary.
    # @param dictionary_id Dictionary Id
    # @param input Input with dictionary id and entries information
    # @param [Hash] opts the optional parameters
    # @return [EntryAddResponse]
    def self.resources_dictionary_entry_add_post(dictionary_id, input, opts = {})
      
      # verify the required parameter 'dictionary_id' is set
      raise "Missing the required parameter 'dictionary_id' when calling resources_dictionary_entry_add_post" if dictionary_id.nil?
      
      # verify the required parameter 'input' is set
      raise "Missing the required parameter 'input' when calling resources_dictionary_entry_add_post" if input.nil?
      

      # resource path
      path = "/resources/dictionary/entry/add".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'dictionaryId'] = dictionary_id

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = []
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = Swagger::Request.object_to_http_body(input)
      

      auth_names = ['accessToken', 'apiKey']
      response = Swagger::Request.new(:POST, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
      obj = EntryAddResponse.new() and obj.build_from_hash(response)
    end

    # Import entries
    # Import entries to an existing dictionary.
    # @param dictionary_id Id of the dictionary where to import entries
    # @param source_lang Source lang of the entries to import
    # @param [Hash] opts the optional parameters
    # @option opts [file] :input_file File with entries to import
    # @return [DictionariesImportResponse]
    def self.resources_dictionary_entry_import_post(dictionary_id, source_lang, opts = {})
      
      # verify the required parameter 'dictionary_id' is set
      raise "Missing the required parameter 'dictionary_id' when calling resources_dictionary_entry_import_post" if dictionary_id.nil?
      
      # verify the required parameter 'source_lang' is set
      raise "Missing the required parameter 'source_lang' when calling resources_dictionary_entry_import_post" if source_lang.nil?
      

      # resource path
      path = "/resources/dictionary/entry/import".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'dictionaryId'] = dictionary_id
      query_params[:'sourceLang'] = source_lang

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['multipart/form-data', 'application/x-www-form-urlencoded', '*/*']
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}
      form_params["inputFile"] = opts[:'input_file'] if opts[:'input_file']

      # http body (model)
      post_body = nil
      

      auth_names = ['accessToken', 'apiKey']
      response = Swagger::Request.new(:POST, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
      obj = DictionariesImportResponse.new() and obj.build_from_hash(response)
    end

    # List entries
    # List entries for a specific dictionary.
    # @param dictionary_id Dictionary Id
    # @param [Hash] opts the optional parameters
    # @option opts [EntriesListFilters] :filters Different filters that can be applied to the list functionality (skip/limit/sort/match)
    # @return [EntriesListResponse]
    def self.resources_dictionary_entry_list_post(dictionary_id, opts = {})
      
      # verify the required parameter 'dictionary_id' is set
      raise "Missing the required parameter 'dictionary_id' when calling resources_dictionary_entry_list_post" if dictionary_id.nil?
      

      # resource path
      path = "/resources/dictionary/entry/list".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'dictionaryId'] = dictionary_id

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = []
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = Swagger::Request.object_to_http_body(opts[:'filters'])
      

      auth_names = ['accessToken', 'apiKey']
      response = Swagger::Request.new(:POST, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
      obj = EntriesListResponse.new() and obj.build_from_hash(response)
    end

    # Remove an entry
    # Remove an entry in an existing dictionary.
    # @param dictionary_id Dictionary Id
    # @param input Input with dictionary id + entry id (src or tgt) to delete
    # @param [Hash] opts the optional parameters
    # @return [EntryRemoveResponse]
    def self.resources_dictionary_entry_remove_post(dictionary_id, input, opts = {})
      
      # verify the required parameter 'dictionary_id' is set
      raise "Missing the required parameter 'dictionary_id' when calling resources_dictionary_entry_remove_post" if dictionary_id.nil?
      
      # verify the required parameter 'input' is set
      raise "Missing the required parameter 'input' when calling resources_dictionary_entry_remove_post" if input.nil?
      

      # resource path
      path = "/resources/dictionary/entry/delete".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'dictionaryId'] = dictionary_id

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = []
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = Swagger::Request.object_to_http_body(input)
      

      auth_names = ['accessToken', 'apiKey']
      response = Swagger::Request.new(:POST, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
      obj = EntryRemoveResponse.new() and obj.build_from_hash(response)
    end

    # Upadte an entry
    # Update an entry in an existing dictionary.
    # @param dictionary_id Dictionary Id
    # @param input Input with dictionary id + entry id (src or tgt) to delete
    # @param [Hash] opts the optional parameters
    # @return [EntryUpdateResponse]
    def self.resources_dictionary_entry_update_post(dictionary_id, input, opts = {})
      
      # verify the required parameter 'dictionary_id' is set
      raise "Missing the required parameter 'dictionary_id' when calling resources_dictionary_entry_update_post" if dictionary_id.nil?
      
      # verify the required parameter 'input' is set
      raise "Missing the required parameter 'input' when calling resources_dictionary_entry_update_post" if input.nil?
      

      # resource path
      path = "/resources/dictionary/entry/update".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'dictionaryId'] = dictionary_id

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = []
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = Swagger::Request.object_to_http_body(input)
      

      auth_names = ['accessToken', 'apiKey']
      response = Swagger::Request.new(:POST, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
      obj = EntryUpdateResponse.new() and obj.build_from_hash(response)
    end

    # List dictionaries
    # List the dictionaries.
    # @param [Hash] opts the optional parameters
    # @option opts [DictionariesListFilters] :filters Different filters that can be applied to the list functionality (skip/limit/sort/match)
    # @return [DictionariesListResponse]
    def self.resources_dictionary_list_post(opts = {})
      

      # resource path
      path = "/resources/dictionary/list".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = []
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = Swagger::Request.object_to_http_body(opts[:'filters'])
      

      auth_names = ['accessToken', 'apiKey']
      response = Swagger::Request.new(:POST, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
      obj = DictionariesListResponse.new() and obj.build_from_hash(response)
    end

    # Lookup
    # Lookup words from a source language to a target language.
    # @param source Language code of the source text\n
    # @param target Language code in which to lookup the source text\n
    # @param input Input word (the &#39;input&#39; parameter can be repeated)\n
    # @param [Hash] opts the optional parameters
    # @option opts [boolean] :autocomplete With this option, if the input word is not found in the source language, it will be filled in with autocompletion to perform the lookup\n\nDefault: false\n
    # @option opts [string] :callback Javascript callback function name for JSONP Support\n
    # @return [LookupResponse]
    def self.resources_dictionary_lookup_get(source, target, input, opts = {})
      
      # verify the required parameter 'source' is set
      raise "Missing the required parameter 'source' when calling resources_dictionary_lookup_get" if source.nil?
      
      # verify the required parameter 'target' is set
      raise "Missing the required parameter 'target' when calling resources_dictionary_lookup_get" if target.nil?
      
      # verify the required parameter 'input' is set
      raise "Missing the required parameter 'input' when calling resources_dictionary_lookup_get" if input.nil?
      

      # resource path
      path = "/resources/dictionary/lookup".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'source'] = source
      query_params[:'target'] = target
      query_params[:'input'] = input
      query_params[:'autocomplete'] = opts[:'autocomplete'] if opts[:'autocomplete']
      query_params[:'callback'] = opts[:'callback'] if opts[:'callback']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = []
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = ['accessToken', 'apiKey']
      response = Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
      obj = LookupResponse.new() and obj.build_from_hash(response)
    end

    # Supported Languages
    # List of language pairs in which lookup is supported. This list can be limited to a specific source language or target language.\n
    # @param [Hash] opts the optional parameters
    # @option opts [string] :source Language code of the source text\n
    # @option opts [string] :target Language code into which to translate the source text\n
    # @option opts [string] :callback Javascript callback function name for JSONP Support\n
    # @return [LookupSupportedLanguageResponse]
    def self.resources_dictionary_lookup_supported_languages_get(opts = {})
      

      # resource path
      path = "/resources/dictionary/lookup/supportedLanguages".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'source'] = opts[:'source'] if opts[:'source']
      query_params[:'target'] = opts[:'target'] if opts[:'target']
      query_params[:'callback'] = opts[:'callback'] if opts[:'callback']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = []
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = ['accessToken', 'apiKey']
      response = Swagger::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
      obj = LookupSupportedLanguageResponse.new() and obj.build_from_hash(response)
    end

    # Remove a dictionary
    # Remove an existing dictionary.
    # @param dictionary_id Dictionary Id
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def self.resources_dictionary_remove_post(dictionary_id, opts = {})
      
      # verify the required parameter 'dictionary_id' is set
      raise "Missing the required parameter 'dictionary_id' when calling resources_dictionary_remove_post" if dictionary_id.nil?
      

      # resource path
      path = "/resources/dictionary/remove".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'dictionaryId'] = dictionary_id

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = []
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = ['accessToken', 'apiKey']
      Swagger::Request.new(:POST, path, {:params => query_params,:headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make
      nil
    end

    # Update a dictionary
    # Update an existing dictionary.
    # @param dictionary_id Dictionary Id
    # @param input Input with dictionary id
    # @param [Hash] opts the optional parameters
    # @return [DictionaryUpdateResponse]
    def self.resources_dictionary_update_post(dictionary_id, input, opts = {})
      
      # verify the required parameter 'dictionary_id' is set
      raise "Missing the required parameter 'dictionary_id' when calling resources_dictionary_update_post" if dictionary_id.nil?
      
      # verify the required parameter 'input' is set
      raise "Missing the required parameter 'input' when calling resources_dictionary_update_post" if input.nil?
      

      # resource path
      path = "/resources/dictionary/update".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'dictionaryId'] = dictionary_id

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = []
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = Swagger::Request.object_to_http_body(input)
      

      auth_names = ['accessToken', 'apiKey']
      response = Swagger::Request.new(:POST, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
      obj = DictionaryUpdateResponse.new() and obj.build_from_hash(response)
    end
  end
end
