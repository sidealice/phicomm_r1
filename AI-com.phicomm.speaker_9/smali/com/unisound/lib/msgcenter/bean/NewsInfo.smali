.class public Lcom/unisound/lib/msgcenter/bean/NewsInfo;
.super Ljava/lang/Object;
.source "NewsInfo.java"


# instance fields
.field private audioUrl:Ljava/lang/String;

.field private duration:I

.field private humanTime:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private imageUrl:Ljava/lang/String;

.field private playing:Z

.field private summary:Ljava/lang/String;

.field private tags:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private updatedTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAudioUrl()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/NewsInfo;->audioUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .line 97
    iget v0, p0, Lcom/unisound/lib/msgcenter/bean/NewsInfo;->duration:I

    return v0
.end method

.method public getHumanTime()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/NewsInfo;->humanTime:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/NewsInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/NewsInfo;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/NewsInfo;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public getTags()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/NewsInfo;->tags:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/NewsInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedTime()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/NewsInfo;->updatedTime:Ljava/lang/String;

    return-object v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 187
    iget-boolean v0, p0, Lcom/unisound/lib/msgcenter/bean/NewsInfo;->playing:Z

    return v0
.end method

.method public setAudioUrl(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/NewsInfo;->audioUrl:Ljava/lang/String;

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    .line 106
    iput p1, p0, Lcom/unisound/lib/msgcenter/bean/NewsInfo;->duration:I

    return-void
.end method

.method public setHumanTime(Ljava/lang/String;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/NewsInfo;->humanTime:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/NewsInfo;->id:Ljava/lang/String;

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/NewsInfo;->imageUrl:Ljava/lang/String;

    return-void
.end method

.method public setPlaying(Z)V
    .locals 0

    .line 196
    iput-boolean p1, p0, Lcom/unisound/lib/msgcenter/bean/NewsInfo;->playing:Z

    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/NewsInfo;->summary:Ljava/lang/String;

    return-void
.end method

.method public setTags(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/NewsInfo;->tags:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/NewsInfo;->title:Ljava/lang/String;

    return-void
.end method

.method public setUpdatedTime(Ljava/lang/String;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/NewsInfo;->updatedTime:Ljava/lang/String;

    return-void
.end method
