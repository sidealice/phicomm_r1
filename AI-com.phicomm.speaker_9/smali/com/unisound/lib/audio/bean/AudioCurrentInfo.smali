.class public Lcom/unisound/lib/audio/bean/AudioCurrentInfo;
.super Ljava/lang/Object;
.source "AudioCurrentInfo.java"


# instance fields
.field private cover:Ljava/lang/String;

.field private cover_large:Ljava/lang/String;

.field private duration:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private isCollected:Z

.field private play_count:D

.field private playing:Z

.field private tags:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private update_time:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private url_high:Ljava/lang/String;

.field private url_m4a_high:Ljava/lang/String;

.field private urlm4a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCover()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;->cover:Ljava/lang/String;

    return-object v0
.end method

.method public getCover_large()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;->cover_large:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;->duration:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getPlay_count()D
    .locals 2

    .line 40
    iget-wide v0, p0, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;->play_count:D

    return-wide v0
.end method

.method public getTags()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;->tags:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdate_time()Ljava/lang/String;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;->update_time:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl_high()Ljava/lang/String;
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;->url_high:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl_m4a_high()Ljava/lang/String;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;->url_m4a_high:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlm4a()Ljava/lang/String;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;->urlm4a:Ljava/lang/String;

    return-object v0
.end method

.method public isCollected()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;->isCollected:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;->playing:Z

    return v0
.end method

.method public setCollected(Z)V
    .locals 0

    .line 93
    iput-boolean p1, p0, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;->isCollected:Z

    return-void
.end method

.method public setCover(Ljava/lang/String;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;->cover:Ljava/lang/String;

    return-void
.end method

.method public setCover_large(Ljava/lang/String;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;->cover_large:Ljava/lang/String;

    return-void
.end method

.method public setDuration(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;->duration:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;->id:Ljava/lang/String;

    return-void
.end method

.method public setPlay_count(D)V
    .locals 0

    .line 49
    iput-wide p1, p0, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;->play_count:D

    return-void
.end method

.method public setPlaying(Z)V
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;->playing:Z

    return-void
.end method

.method public setTags(Ljava/lang/String;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;->tags:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;->title:Ljava/lang/String;

    return-void
.end method

.method public setUpdate_time(Ljava/lang/String;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;->update_time:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;->url:Ljava/lang/String;

    return-void
.end method

.method public setUrl_high(Ljava/lang/String;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;->url_high:Ljava/lang/String;

    return-void
.end method

.method public setUrl_m4a_high(Ljava/lang/String;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;->url_m4a_high:Ljava/lang/String;

    return-void
.end method

.method public setUrlm4a(Ljava/lang/String;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;->urlm4a:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioCurrentInfo{id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", tags=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;->tags:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", cover=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;->cover:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", duration="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;->duration:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", title=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", cover_large=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;->cover_large:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", play_count="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;->play_count:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", update_time=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;->update_time:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", url_m4a_high=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;->url_m4a_high:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", urlm4a=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;->urlm4a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", url_high=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;->url_high:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", url=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;->url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", playing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;->playing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isCollected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;->isCollected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
