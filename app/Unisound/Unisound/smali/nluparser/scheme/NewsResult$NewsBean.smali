.class public Lnluparser/scheme/NewsResult$NewsBean;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnluparser/scheme/NewsResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NewsBean"
.end annotation


# instance fields
.field private audioUrl:Ljava/lang/String;

.field private createdTime:Ljava/lang/String;

.field private duration:D

.field private humanTime:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private imageUrl:Ljava/lang/String;

.field private summary:Ljava/lang/String;

.field private tags:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private updatedTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAudioUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/NewsResult$NewsBean;->audioUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/NewsResult$NewsBean;->createdTime:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()D
    .locals 2

    iget-wide v0, p0, Lnluparser/scheme/NewsResult$NewsBean;->duration:D

    return-wide v0
.end method

.method public getHumanTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/NewsResult$NewsBean;->humanTime:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/NewsResult$NewsBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/NewsResult$NewsBean;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/NewsResult$NewsBean;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public getTags()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/NewsResult$NewsBean;->tags:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/NewsResult$NewsBean;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/NewsResult$NewsBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/NewsResult$NewsBean;->updatedTime:Ljava/lang/String;

    return-object v0
.end method

.method public setAudioUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "audioUrl"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/NewsResult$NewsBean;->audioUrl:Ljava/lang/String;

    return-void
.end method

.method public setCreatedTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "createdTime"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/NewsResult$NewsBean;->createdTime:Ljava/lang/String;

    return-void
.end method

.method public setDuration(D)V
    .locals 1
    .param p1, "duration"    # D

    .prologue
    iput-wide p1, p0, Lnluparser/scheme/NewsResult$NewsBean;->duration:D

    return-void
.end method

.method public setHumanTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "humanTime"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/NewsResult$NewsBean;->humanTime:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/NewsResult$NewsBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageUrl"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/NewsResult$NewsBean;->imageUrl:Ljava/lang/String;

    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/NewsResult$NewsBean;->summary:Ljava/lang/String;

    return-void
.end method

.method public setTags(Ljava/lang/String;)V
    .locals 0
    .param p1, "tags"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/NewsResult$NewsBean;->tags:Ljava/lang/String;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/NewsResult$NewsBean;->text:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/NewsResult$NewsBean;->title:Ljava/lang/String;

    return-void
.end method

.method public setUpdatedTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "updatedTime"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/NewsResult$NewsBean;->updatedTime:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const/16 v4, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NewsBean{id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnluparser/scheme/NewsResult$NewsBean;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", summary=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnluparser/scheme/NewsResult$NewsBean;->summary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tags=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnluparser/scheme/NewsResult$NewsBean;->tags:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", audioUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnluparser/scheme/NewsResult$NewsBean;->audioUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lnluparser/scheme/NewsResult$NewsBean;->duration:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", text=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnluparser/scheme/NewsResult$NewsBean;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnluparser/scheme/NewsResult$NewsBean;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", createdTime=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnluparser/scheme/NewsResult$NewsBean;->createdTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imageUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnluparser/scheme/NewsResult$NewsBean;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", humanTime=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnluparser/scheme/NewsResult$NewsBean;->humanTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", updatedTime=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnluparser/scheme/NewsResult$NewsBean;->updatedTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
