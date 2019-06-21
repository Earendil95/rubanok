# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/simplecov/all/simplecov.rbi
#
# simplecov-0.16.1
module SimpleCov
  def self.add_not_loaded_files(result); end
  def self.clear_result; end
  def self.exit_exception; end
  def self.exit_status_from_exception; end
  def self.filtered(files); end
  def self.grouped(files); end
  def self.load_adapter(name); end
  def self.load_profile(name); end
  def self.pid; end
  def self.pid=(arg0); end
  def self.process_result(result, exit_status); end
  def self.result; end
  def self.result?; end
  def self.result_exit_status(result, covered_percent); end
  def self.run_exit_tasks!; end
  def self.running; end
  def self.running=(arg0); end
  def self.set_exit_exception; end
  def self.start(profile = nil, &block); end
  def self.usable?; end
  def self.write_last_run(covered_percent); end
  extend SimpleCov::Configuration
end
module SimpleCov::Formatter
end
class SimpleCov::Formatter::MultiFormatter
  def self.[](*args); end
  def self.new(formatters = nil); end
end
module SimpleCov::Formatter::MultiFormatter::InstanceMethods
  def format(result); end
end
module SimpleCov::Configuration
  def adapters; end
  def add_filter(filter_argument = nil, &filter_proc); end
  def add_group(group_name, filter_argument = nil, &filter_proc); end
  def at_exit(&block); end
  def command_name(name = nil); end
  def configure(&block); end
  def coverage_dir(dir = nil); end
  def coverage_path; end
  def filters; end
  def filters=(arg0); end
  def formatter(formatter = nil); end
  def formatter=(arg0); end
  def formatters; end
  def formatters=(formatters); end
  def groups; end
  def groups=(arg0); end
  def maximum_coverage_drop(coverage_drop = nil); end
  def merge_timeout(seconds = nil); end
  def minimum_coverage(coverage = nil); end
  def minimum_coverage_by_file(coverage = nil); end
  def nocov_token(nocov_token = nil); end
  def parse_filter(filter_argument = nil, &filter_proc); end
  def profiles; end
  def project_name(new_name = nil); end
  def refuse_coverage_drop; end
  def root(root = nil); end
  def skip_token(nocov_token = nil); end
  def track_files(glob); end
  def tracked_files; end
  def use_merging(use = nil); end
end
module SimpleCov::ExitCodes
end
class SimpleCov::Profiles < Hash
  def define(name, &blk); end
  def load(name); end
end
class SimpleCov::SourceFile
  def build_lines; end
  def coverage; end
  def coverage_exceeding_source_warn; end
  def covered_lines; end
  def covered_percent; end
  def covered_strength; end
  def filename; end
  def initialize(filename, coverage); end
  def line(number); end
  def lines; end
  def lines_of_code; end
  def lines_strength; end
  def missed_lines; end
  def never_lines; end
  def no_lines?; end
  def process_skipped_lines(lines); end
  def project_filename; end
  def relevant_lines; end
  def round_float(float, places); end
  def skipped_lines; end
  def source; end
  def source_lines; end
  def src; end
end
class SimpleCov::SourceFile::Line
  def coverage; end
  def covered?; end
  def initialize(src, line_number, coverage); end
  def line; end
  def line_number; end
  def missed?; end
  def never?; end
  def number; end
  def skipped!; end
  def skipped; end
  def skipped?; end
  def source; end
  def src; end
  def status; end
end
class SimpleCov::FileList < Array
  def covered_lines; end
  def covered_percent; end
  def covered_percentages; end
  def covered_strength; end
  def least_covered_file; end
  def lines_of_code; end
  def missed_lines; end
  def never_lines; end
  def skipped_lines; end
end
class SimpleCov::Result
  def command_name; end
  def command_name=(arg0); end
  def coverage; end
  def covered_lines(*args, &block); end
  def covered_percent(*args, &block); end
  def covered_percentages(*args, &block); end
  def covered_strength(*args, &block); end
  def created_at; end
  def created_at=(arg0); end
  def filenames; end
  def files; end
  def filter!; end
  def format!; end
  def groups; end
  def initialize(original_result); end
  def least_covered_file(*args, &block); end
  def missed_lines(*args, &block); end
  def original_result; end
  def self.from_hash(hash); end
  def source_files; end
  def to_hash; end
  def total_lines(*args, &block); end
  extend Forwardable
end
class SimpleCov::Filter
  def filter_argument; end
  def initialize(filter_argument); end
  def matches?(_); end
  def passes?(source_file); end
  def self.build_filter(filter_argument); end
  def self.class_for_argument(filter_argument); end
end
class SimpleCov::StringFilter < SimpleCov::Filter
  def matches?(source_file); end
end
class SimpleCov::RegexFilter < SimpleCov::Filter
  def matches?(source_file); end
end
class SimpleCov::BlockFilter < SimpleCov::Filter
  def matches?(source_file); end
end
class SimpleCov::ArrayFilter < SimpleCov::Filter
  def initialize(filter_argument); end
  def matches?(source_files_list); end
end
class SimpleCov::Formatter::SimpleFormatter
  def format(result); end
end
module SimpleCov::LastRun
  def self.last_run_path; end
  def self.read; end
  def self.write(json); end
end
class SimpleCov::LinesClassifier
  def classify(lines); end
  def self.no_cov_line; end
  def self.no_cov_line?(line); end
  def self.whitespace_line?(line); end
end
module SimpleCov::RawCoverage
  def merge_file_coverage(file1, file2); end
  def merge_line_coverage(count1, count2); end
  def merge_results(*results); end
  def merge_resultsets(result1, result2); end
  def self.merge_file_coverage(file1, file2); end
  def self.merge_line_coverage(count1, count2); end
  def self.merge_results(*results); end
  def self.merge_resultsets(result1, result2); end
end
module SimpleCov::ResultMerger
  def self.clear_resultset; end
  def self.merge_results(*results); end
  def self.merged_result; end
  def self.results; end
  def self.resultset; end
  def self.resultset_path; end
  def self.resultset_writelock; end
  def self.store_result(result); end
  def self.stored_data; end
  def self.synchronize_resultset; end
end
module SimpleCov::CommandGuesser
  def self.from_command_line_options; end
  def self.from_defined_constants; end
  def self.from_env; end
  def self.guess; end
  def self.original_run_command; end
  def self.original_run_command=(arg0); end
end
class SimpleCov::Railtie < Rails::Railtie
end