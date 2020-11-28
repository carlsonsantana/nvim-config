augroup templates
  autocmd BufNewFile *.* exec s:LoadTemplateIfExists()
augroup END

function s:LoadTemplateIfExists()
  if s:HasFileSkeleton()
    exec s:LoadSkeletonSpecialFile()
  elseif s:HasLanguageSkeleton()
    exec s:LoadSkeleton()
  else
    return
  endif
  exec s:ReplaceTemplatesVariables()
endfunction

function s:HasFileSkeleton()
  return filereadable(expand(s:GetFileSkeletonFileName()))
endfunction

function s:LoadSkeletonSpecialFile()
  exec '0r ' . s:GetFileSkeletonFileName()
  exec s:DeleteLastLine()
endfunction

function s:GetFileSkeletonFileName()
  return '~/.vim/templates/skeleton-' . s:GetFileName()
endfunction

function s:GetFileName()
  return expand('%:t')
endfunction

function s:DeleteLastLine()
  :$d
endfunction

function s:HasLanguageSkeleton()
  return filereadable(expand(s:GetLanguageSkeletonFileName()))
endfunction

function s:LoadSkeleton()
  exec '0r ' . s:GetLanguageSkeletonFileName()
  exec s:DeleteLastLine()
endfunction

function s:GetLanguageSkeletonFileName()
  return '~/.vim/templates/skeleton.' . s:GetFileExtension()
endfunction

function s:GetFileExtension()
  return expand('%:e')
endfunction

function s:ReplaceTemplatesVariables()
  exec s:ReplaceFileName()

  let fileExtension = s:GetFileExtension()
  if fileExtension == "java"
    exec s:ReplaceJavaTemplatesVariables()
  endif
endfunction

function s:ReplaceFileName()
  exec '1,$g/\$FileName/s/\$FileName/' . s:GetFileOrDirectoryName()
endfunction

function s:GetFileOrDirectoryName()
  let fileName = s:GetFileName()
  if fileName == 'index.jsx'
    return s:GetDirectoryName()
  else
    return s:GetFileNameWithoutExtension()
  endif
endfunction

function s:GetFileNameWithoutExtension()
  return fnamemodify(s:GetFileName(), ':r')
endfunction

function s:GetDirectoryName()
  return expand('%:p:h:t')
endfunction

function s:ReplaceJavaTemplatesVariables()
  exec s:ReplaceJavaPackage()
endfunction

function s:ReplaceJavaPackage()
  exec '1,$g/\$JavaPackage/s/\$JavaPackage/' . s:GetPackageName()
endfunction

function s:GetPackageName()
  return s:MountPackageName(expand('%:p:h'))
endfunction

function s:MountPackageName(currentDirectory)
  let completePackageName = ""
  let package = fnamemodify(a:currentDirectory, ':t')
  if package != "src"
    let completePackageName = s:MountPackageName(fnamemodify(a:currentDirectory, ':p:h:h')) . '.' . package
  endif
  return substitute(substitute(completePackageName, '^\.main\.java\.', '\1', ''), '^\.test\.java\.', '\1', '')
endfunction
