# frozen_string_literal: true

require 'logger'

# below is the code to make life easier as it already has logging methods defined
module LoggerEasy

  def logger_easy(log_file_name = 'logger_easy.log')
    @log_file_name = log_file_name
    @logger = Logger.new(log_file_name)
  end # logger_easy

  def log_debug(message)
    @logger ||= Logger.new(@log_file_name)
    @logger.debug(message)
  end # log_debug

  def log_info(message)
    @logger ||= Logger.new(@log_file_name)
    @logger.info(message)
  end # log_info

  def log_warn(message)
    @logger ||= Logger.new(@log_file_name)
    @logger.warn(message)
  end # log_warn

  def log_error(message)
    @logger ||= Logger.new(@log_file_name)
    @logger.error(message)
  end # log_error

  def log_fatal(message)
    @logger ||= Logger.new(@log_file_name)
    @logger.fatal(message)
  end # log_fatal

  def log_unknown(message)
    @logger ||= Logger.new(@log_file_name)
    @logger.unknown(message)
  end # log_unknown

  def logger_easy_close
    @logger ||= Logger.new(@log_file_name)
    @logger.close
  end # logger_easy_close

end # LoggerEasy
