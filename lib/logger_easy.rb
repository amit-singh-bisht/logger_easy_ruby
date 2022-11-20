# frozen_string_literal: true

require 'logger'

# below is the code to make life easier as it already has logging methods defined
module LoggerEasy

  attr_accessor :log_file_name

  def initialize(log_file_name)
    @log_file_name = log_file_name
    @logger = Logger.new(log_file_name)
  end

  def log_info(message)
    @logger ||= Logger.new(@log_file_name)
    @logger.info(message)
  end

  def log_debug(message)
    @logger ||= Logger.new(@log_file_name)
    @logger.debug(message)
  end

  def log_error(message)
    @logger ||= Logger.new(@log_file_name)
    @logger.error(message)
  end

end
