
Template.course_video.helpers({
    course_video : ->
        if @video?
            video = Uploads.findOne({_id : @video, type:'video'})

            if video?.server is "qiniu"
                video.path = "http://" + AppSetting.qiniu.DOMAIN + "/" + video.path;
            return video
})