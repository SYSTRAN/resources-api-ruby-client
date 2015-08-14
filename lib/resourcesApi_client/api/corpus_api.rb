require "uri"

module ResourcesApiClient
  class CorpusApi
    basePath = "https://platformapi-stag.systran.net:8904/"
    # apiInvoker = APIInvoker

    # Add a new corpus
    # Add a new empty corpus.\n
    # @param name Corpus name. The name also contains the directories (ex: \&quot;/myproject/firstPass/PersonalCorpus\&quot;)
    # @param [Hash] opts the optional parameters
    # @option opts [string] :lang Source language code ([details](#description_langage_code_values))
    # @option opts [array[string]] :tag Tag for the the corpus (this parameter can be repeated)
    # @option opts [string] :callback Javascript callback function name for JSONP Support\n
    # @return [CorpusAddResponse]
    def self.resources_corpus_add_post(name, opts = {})
      
      # verify the required parameter 'name' is set
      raise "Missing the required parameter 'name' when calling resources_corpus_add_post" if name.nil?
      

      # resource path
      path = "/resources/corpus/add".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'name'] = name
      query_params[:'lang'] = opts[:'lang'] if opts[:'lang']
      query_params[:'tag'] = opts[:'tag'] if opts[:'tag']
      query_params[:'callback'] = opts[:'callback'] if opts[:'callback']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = ['accessToken', 'apiKey']
      response = Swagger::Request.new(:POST, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
      obj = CorpusAddResponse.new() and obj.build_from_hash(response)
    end

    # Delete corpus
    # Delete a corpus.\n
    # @param corpus_id Corpus identifier (this parameter can be repeated)
    # @param [Hash] opts the optional parameters
    # @option opts [string] :callback Javascript callback function name for JSONP Support\n
    # @return [CorpusDeleteResponse]
    def self.resources_corpus_delete_post(corpus_id, opts = {})
      
      # verify the required parameter 'corpus_id' is set
      raise "Missing the required parameter 'corpus_id' when calling resources_corpus_delete_post" if corpus_id.nil?
      

      # resource path
      path = "/resources/corpus/delete".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'corpusId'] = corpus_id
      query_params[:'callback'] = opts[:'callback'] if opts[:'callback']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = ['accessToken', 'apiKey']
      response = Swagger::Request.new(:POST, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
      obj = CorpusDeleteResponse.new() and obj.build_from_hash(response)
    end

    # Detail corpus
    # Get detailed information about a corpus.\n
    # @param corpus_id Corpus identifier
    # @param [Hash] opts the optional parameters
    # @option opts [string] :callback Javascript callback function name for JSONP Support\n
    # @return [CorpusDetailResponse]
    def self.resources_corpus_details_get(corpus_id, opts = {})
      
      # verify the required parameter 'corpus_id' is set
      raise "Missing the required parameter 'corpus_id' when calling resources_corpus_details_get" if corpus_id.nil?
      

      # resource path
      path = "/resources/corpus/details".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'corpusId'] = corpus_id
      query_params[:'callback'] = opts[:'callback'] if opts[:'callback']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
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
      obj = CorpusDetailResponse.new() and obj.build_from_hash(response)
    end

    # Corpus Exists
    # Check if a corpus exists\n
    # @param name Corpus name. The name also contains the directories (ex: \&quot;/myproject/firstPass/PersonalCorpus\&quot;)
    # @param [Hash] opts the optional parameters
    # @option opts [string] :callback Javascript callback function name for JSONP Support\n
    # @return [CorpusExistsResponse]
    def self.resources_corpus_exists_get(name, opts = {})
      
      # verify the required parameter 'name' is set
      raise "Missing the required parameter 'name' when calling resources_corpus_exists_get" if name.nil?
      

      # resource path
      path = "/resources/corpus/exists".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'name'] = name
      query_params[:'callback'] = opts[:'callback'] if opts[:'callback']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
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
      obj = CorpusExistsResponse.new() and obj.build_from_hash(response)
    end

    # Export corpus
    # Download a corpus in an expected format.\n
    # @param corpus_id Corpus identifier
    # @param [Hash] opts the optional parameters
    # @option opts [string] :format The expected corpus format\n
    # @option opts [string] :callback Javascript callback function name for JSONP Support\n
    # @return [file]
    def self.resources_corpus_export_get(corpus_id, opts = {})
      
      # verify the required parameter 'corpus_id' is set
      raise "Missing the required parameter 'corpus_id' when calling resources_corpus_export_get" if corpus_id.nil?
      

      # resource path
      path = "/resources/corpus/export".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'corpusId'] = corpus_id
      query_params[:'format'] = opts[:'format'] if opts[:'format']
      query_params[:'callback'] = opts[:'callback'] if opts[:'callback']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/x-tmx+xml', 'text/bitext']
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
    end

    # Import corpus
    # Add a new corpus from an existing corpus.\n
    # @param name Corpus name. The name also contains the directories (ex: \&quot;/myproject/firstPass/PersonalCorpus\&quot;)
    # @param [Hash] opts the optional parameters
    # @option opts [string] :input Content of the existing corpus\n\n**Either `input` or `inputFile` is required**\n
    # @option opts [file] :input_file Content of the existing corpus\n\n**Either `input` or `inputFile` is required**\n
    # @option opts [string] :format Format of the input corpus.\n
    # @option opts [array[string]] :tag Tag for the the corpus (this parameter can be repeated)
    # @option opts [string] :callback Javascript callback function name for JSONP Support\n
    # @return [CorpusImportResponse]
    def self.resources_corpus_import_post(name, opts = {})
      
      # verify the required parameter 'name' is set
      raise "Missing the required parameter 'name' when calling resources_corpus_import_post" if name.nil?
      

      # resource path
      path = "/resources/corpus/import".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'name'] = name
      query_params[:'input'] = opts[:'input'] if opts[:'input']
      query_params[:'format'] = opts[:'format'] if opts[:'format']
      query_params[:'tag'] = opts[:'tag'] if opts[:'tag']
      query_params[:'callback'] = opts[:'callback'] if opts[:'callback']

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
      obj = CorpusImportResponse.new() and obj.build_from_hash(response)
    end

    # List corpora
    # List available corpora. Parameters can be used to restrict the list of returned corpora.\n
    # @param [Hash] opts the optional parameters
    # @option opts [string] :source_lang Source language code ([details](#description_langage_code_values))
    # @option opts [string] :target_lang Target language code ([details](#description_langage_code_values))
    # @option opts [boolean] :without_pending Filter out corpora in \&quot;pending\&quot; status\n
    # @option opts [boolean] :without_error Filter out corpora in \&quot;error\&quot; status\n
    # @option opts [string] :prefix Prefix of the corpus name\n
    # @option opts [string] :directory If specified, response will return the content of this directory, including corpora and directories. This list can can also be filtered by the prefix parameter.\n
    # @option opts [string] :callback Javascript callback function name for JSONP Support\n
    # @return [CorpusListResponse]
    def self.resources_corpus_list_get(opts = {})
      

      # resource path
      path = "/resources/corpus/list".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'sourceLang'] = opts[:'source_lang'] if opts[:'source_lang']
      query_params[:'targetLang'] = opts[:'target_lang'] if opts[:'target_lang']
      query_params[:'withoutPending'] = opts[:'without_pending'] if opts[:'without_pending']
      query_params[:'withoutError'] = opts[:'without_error'] if opts[:'without_error']
      query_params[:'prefix'] = opts[:'prefix'] if opts[:'prefix']
      query_params[:'directory'] = opts[:'directory'] if opts[:'directory']
      query_params[:'callback'] = opts[:'callback'] if opts[:'callback']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
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
      obj = CorpusListResponse.new() and obj.build_from_hash(response)
    end

    # Corpus Match
    # Find sentences in the corpus that match the input text from a given threshold.\n
    # @param corpus_id Corpus identifier (this parameter can be repeated)
    # @param input Text is used to perform the match operation (this parameter can be repeated)\n
    # @param source_lang Source language code ([details](#description_langage_code_values))
    # @param target_lang Target language code ([details](#description_langage_code_values))
    # @param [Hash] opts the optional parameters
    # @option opts [double] :threshold The fuzzy match threshold from which a sentence will be considered as a match result\n
    # @option opts [int] :limit Limit the number of returned matches. Only first matches within the \&quot;limit\&quot; will be returned\n
    # @option opts [string] :callback Javascript callback function name for JSONP Support\n
    # @return [CorpusMatchResponse]
    def self.resources_corpus_match_get(corpus_id, input, source_lang, target_lang, opts = {})
      
      # verify the required parameter 'corpus_id' is set
      raise "Missing the required parameter 'corpus_id' when calling resources_corpus_match_get" if corpus_id.nil?
      
      # verify the required parameter 'input' is set
      raise "Missing the required parameter 'input' when calling resources_corpus_match_get" if input.nil?
      
      # verify the required parameter 'source_lang' is set
      raise "Missing the required parameter 'source_lang' when calling resources_corpus_match_get" if source_lang.nil?
      
      # verify the required parameter 'target_lang' is set
      raise "Missing the required parameter 'target_lang' when calling resources_corpus_match_get" if target_lang.nil?
      

      # resource path
      path = "/resources/corpus/match".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'corpusId'] = corpus_id
      query_params[:'input'] = input
      query_params[:'sourceLang'] = source_lang
      query_params[:'targetLang'] = target_lang
      query_params[:'threshold'] = opts[:'threshold'] if opts[:'threshold']
      query_params[:'limit'] = opts[:'limit'] if opts[:'limit']
      query_params[:'callback'] = opts[:'callback'] if opts[:'callback']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
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
      obj = CorpusMatchResponse.new() and obj.build_from_hash(response)
    end

    # Add corpus segments
    # Add segments in a corpus.\n
    # @param body List of segments to add
    # @param [Hash] opts the optional parameters
    # @option opts [string] :callback Javascript callback function name for JSONP Support\n
    # @return [CorpusSegmentAddResponse]
    def self.resources_corpus_segment_add_post(body, opts = {})
      
      # verify the required parameter 'body' is set
      raise "Missing the required parameter 'body' when calling resources_corpus_segment_add_post" if body.nil?
      

      # resource path
      path = "/resources/corpus/segment/add".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'callback'] = opts[:'callback'] if opts[:'callback']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = Swagger::Request.object_to_http_body(body)
      

      auth_names = ['accessToken', 'apiKey']
      response = Swagger::Request.new(:POST, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
      obj = CorpusSegmentAddResponse.new() and obj.build_from_hash(response)
    end

    # Delete corpus segments
    # Delete segments in a corpus.\n
    # @param corpus_id Corpus identifier
    # @param seg_id Segment Id (this parameter can be repeated)
    # @param [Hash] opts the optional parameters
    # @option opts [string] :callback Javascript callback function name for JSONP Support\n
    # @return [CorpusSegmentDeleteResponse]
    def self.resources_corpus_segment_delete_post(corpus_id, seg_id, opts = {})
      
      # verify the required parameter 'corpus_id' is set
      raise "Missing the required parameter 'corpus_id' when calling resources_corpus_segment_delete_post" if corpus_id.nil?
      
      # verify the required parameter 'seg_id' is set
      raise "Missing the required parameter 'seg_id' when calling resources_corpus_segment_delete_post" if seg_id.nil?
      

      # resource path
      path = "/resources/corpus/segment/delete".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'corpusId'] = corpus_id
      query_params[:'segId'] = seg_id
      query_params[:'callback'] = opts[:'callback'] if opts[:'callback']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = ['accessToken', 'apiKey']
      response = Swagger::Request.new(:POST, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
      obj = CorpusSegmentDeleteResponse.new() and obj.build_from_hash(response)
    end

    # List corpus segments
    # List segments in a corpus.\n
    # @param corpus_id Corpus identifier
    # @param [Hash] opts the optional parameters
    # @option opts [int] :skip Skip first found segments in the response\n
    # @option opts [int] :limit Limit the number of returned segments\n
    # @option opts [string] :callback Javascript callback function name for JSONP Support\n
    # @return [CorpusSegmentListResponse]
    def self.resources_corpus_segment_list_get(corpus_id, opts = {})
      
      # verify the required parameter 'corpus_id' is set
      raise "Missing the required parameter 'corpus_id' when calling resources_corpus_segment_list_get" if corpus_id.nil?
      

      # resource path
      path = "/resources/corpus/segment/list".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'corpusId'] = corpus_id
      query_params[:'skip'] = opts[:'skip'] if opts[:'skip']
      query_params[:'limit'] = opts[:'limit'] if opts[:'limit']
      query_params[:'callback'] = opts[:'callback'] if opts[:'callback']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
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
      obj = CorpusSegmentListResponse.new() and obj.build_from_hash(response)
    end

    # Add corpus segment targets
    # Add targets to a segment in a corpus.\n
    # @param body List of targets to add
    # @param [Hash] opts the optional parameters
    # @option opts [string] :callback Javascript callback function name for JSONP Support\n
    # @return [CorpusSegmentAddTargetResponse]
    def self.resources_corpus_segment_target_add_post(body, opts = {})
      
      # verify the required parameter 'body' is set
      raise "Missing the required parameter 'body' when calling resources_corpus_segment_target_add_post" if body.nil?
      

      # resource path
      path = "/resources/corpus/segment/target/add".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'callback'] = opts[:'callback'] if opts[:'callback']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = Swagger::Request.object_to_http_body(body)
      

      auth_names = ['accessToken', 'apiKey']
      response = Swagger::Request.new(:POST, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
      obj = CorpusSegmentAddTargetResponse.new() and obj.build_from_hash(response)
    end

    # Delete corpus segment targets
    # Delete segment targets in a corpus.\n
    # @param corpus_id Corpus identifier
    # @param seg_id Segment Id
    # @param target_id Target id (this parameter can be repeated)
    # @param [Hash] opts the optional parameters
    # @option opts [string] :callback Javascript callback function name for JSONP Support\n
    # @return [CorpusSegmentDeleteTargetResponse]
    def self.resources_corpus_segment_target_delete_post(corpus_id, seg_id, target_id, opts = {})
      
      # verify the required parameter 'corpus_id' is set
      raise "Missing the required parameter 'corpus_id' when calling resources_corpus_segment_target_delete_post" if corpus_id.nil?
      
      # verify the required parameter 'seg_id' is set
      raise "Missing the required parameter 'seg_id' when calling resources_corpus_segment_target_delete_post" if seg_id.nil?
      
      # verify the required parameter 'target_id' is set
      raise "Missing the required parameter 'target_id' when calling resources_corpus_segment_target_delete_post" if target_id.nil?
      

      # resource path
      path = "/resources/corpus/segment/target/delete".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'corpusId'] = corpus_id
      query_params[:'segId'] = seg_id
      query_params[:'targetId'] = target_id
      query_params[:'callback'] = opts[:'callback'] if opts[:'callback']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = ['accessToken', 'apiKey']
      response = Swagger::Request.new(:POST, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
      obj = CorpusSegmentDeleteTargetResponse.new() and obj.build_from_hash(response)
    end

    # Update corpus segment
    # Update a segment in a corpus.\n
    # @param corpus_id Corpus identifier
    # @param seg_id Segment Id
    # @param [Hash] opts the optional parameters
    # @option opts [string] :source Source text
    # @option opts [string] :target_id Target id
    # @option opts [string] :target Target text. `targetId` is required if `target` is specified.
    # @option opts [string] :target_lang Target language. `targetId` is required if `targetLang` is specified.
    # @option opts [string] :callback Javascript callback function name for JSONP Support\n
    # @return [CorpusSegmentUpdateResponse]
    def self.resources_corpus_segment_update_post(corpus_id, seg_id, opts = {})
      
      # verify the required parameter 'corpus_id' is set
      raise "Missing the required parameter 'corpus_id' when calling resources_corpus_segment_update_post" if corpus_id.nil?
      
      # verify the required parameter 'seg_id' is set
      raise "Missing the required parameter 'seg_id' when calling resources_corpus_segment_update_post" if seg_id.nil?
      

      # resource path
      path = "/resources/corpus/segment/update".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'corpusId'] = corpus_id
      query_params[:'segId'] = seg_id
      query_params[:'source'] = opts[:'source'] if opts[:'source']
      query_params[:'targetId'] = opts[:'target_id'] if opts[:'target_id']
      query_params[:'target'] = opts[:'target'] if opts[:'target']
      query_params[:'targetLang'] = opts[:'target_lang'] if opts[:'target_lang']
      query_params[:'callback'] = opts[:'callback'] if opts[:'callback']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = ['accessToken', 'apiKey']
      response = Swagger::Request.new(:POST, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
      obj = CorpusSegmentUpdateResponse.new() and obj.build_from_hash(response)
    end

    # Update corpus properties
    # Update properties of a corpus.\n
    # @param corpus_id Corpus identifier
    # @param [Hash] opts the optional parameters
    # @option opts [string] :name Corpus name. The name also contains the directories (ex: \&quot;/myproject/firstPass/PersonalCorpus\&quot;)
    # @option opts [array[string]] :tag Tag for the the corpus (this parameter can be repeated)
    # @option opts [string] :callback Javascript callback function name for JSONP Support\n
    # @return [CorpusUpdateResponse]
    def self.resources_corpus_update_post(corpus_id, opts = {})
      
      # verify the required parameter 'corpus_id' is set
      raise "Missing the required parameter 'corpus_id' when calling resources_corpus_update_post" if corpus_id.nil?
      

      # resource path
      path = "/resources/corpus/update".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'corpusId'] = corpus_id
      query_params[:'name'] = opts[:'name'] if opts[:'name']
      query_params[:'tag'] = opts[:'tag'] if opts[:'tag']
      query_params[:'callback'] = opts[:'callback'] if opts[:'callback']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = Swagger::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = Swagger::Request.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = ['accessToken', 'apiKey']
      response = Swagger::Request.new(:POST, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
      obj = CorpusUpdateResponse.new() and obj.build_from_hash(response)
    end
  end
end
