# encoding: utf-8
require 'fileutils'
class ResourceItemsController < InheritedResources::Base
  before_filter :authenticate_user!

  def create
      #upload file
      tmp = params[:resource_item][:upload_file].tempfile
      unless (file_ext = params[:resource_item][:upload_file].original_filename.split('.')).size > 1
        render :text => '错误的文件扩展名！<br/><a href="javascript: history.go(-1);">返回</a>'
        return
      end
      file_name = file_ext.join('.')
      file_path = File.join("public", "resource", current_user.id.to_s, ResourceItem.type_hash[params[:resource_item][:resource_type].to_i] || 'other', params[:resource_item][:resource_cate_id] || '0')
      unless File.exist?(file_path)
        FileUtils.mkdir_p file_path
      end
      #public/resource/picture/2/1304543534.jpg
      file = File.join(file_path, file_name)
      FileUtils.cp tmp.path, file
      #FileUtils.rm tmp.path
      
      #/resource/picture/2/1304543534.jpg
      params[:resource_item][:resource_path] = file.sub(/^public/,'')
      params[:resource_item][:resource_name] = file_name
      super
  end

  def show
      redirect_to "/admin/resource_items/#{params[:id]}"
  end
end


    # FileUtils.mkdir_p( dir, *options )
    # Options: noop verbose

    # 将生成dir目录及其所有上级目录。
    # 例如

    #   FileUtils.mkdir_p '/usr/local/lib/ruby'

    # 将生成下列所有目录(若没有的话)。
    #     * /usr
    #     * /usr/local
    #     * /usr/local/bin
    #     * /usr/local/bin/ruby