require 'shrine'
require 'shrine/storage/file_system'

Shrine.storages = {
  cache: Shrine::Storage::FileSystem.new('uploads', prefix: '/cache'), # temporary
  store: Shrine::Storage::FileSystem.new('uploads', prefix: '') # permanent
}

Shrine.plugin :mongoid # or :activerecord
Shrine.plugin :download_endpoint, prefix: 'attachments'
Shrine.plugin :cached_attachment_data # for retaining the cached file across form redisplays
Shrine.plugin :restore_cached_data # re-extract metadata when attaching a cached file
