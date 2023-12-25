class VideosController < ApplicationController
    def show
        @video = Video.find(params[:id])
        @transcript = "Temporary placeholder so as not to download from youtube just yet." #fetch_transcript(@video.url)
    end

    private

    def fetch_transcript(video_url)
        yt_dlp_path = Rails.root.join('bin','yt-dlp_linux')
        #result = %x{#{yt_dlp_path} --skip-download --write-auto-sub --sub-lang en -o - "#{video_url}"}

        #./yt-dlp_linux --skip-download --write-subs --write-auto-subs --sub-lang en --sub-format ttml --convert-subs srt --output "transcript.%(ext)s" REPLACEHEREWITH && sed -i '' -e '/^[0-9][0-9]:[0-9][0-9]:[0-9][0-9].[0-9][0-9][0-9] --> [0-9][0-9]:[0-9][0-9]:[0-9][0-9].[0-9][0-9][0-9]$/d' -e '/^[[:digit:]]\{1,3\}$/d' -e 's/<[^>]*>//g' ./transcript.en.srt && sed -e 's/<[^>]*>//g' -e '/^[[:space:]]*$/d' transcript.en.srt > output.txt && rm transcript.en.srt
        #puts result
        #return result

    end
end