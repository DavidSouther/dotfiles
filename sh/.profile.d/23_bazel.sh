# bazelw/bazelr tab-completion (reuse bazel completions for both forms)
compdef bazelw=bazel bazelr=bazel './bazelw'=bazel './bazelr'=bazel 2>/dev/null
