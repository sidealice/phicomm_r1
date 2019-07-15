.class public Lcom/unisound/lib/audio/bean/AudioCategoryParam;
.super Lcom/unisound/lib/msgcenter/bean/BaseInfo;
.source "AudioCategoryParam.java"


# instance fields
.field private albumId:Ljava/lang/String;

.field private categoryId:Ljava/lang/String;

.field private pageNo:Ljava/lang/String;

.field private pageSize:Ljava/lang/String;

.field private timeAsc:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/unisound/lib/msgcenter/bean/BaseInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlbumId()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/unisound/lib/audio/bean/AudioCategoryParam;->albumId:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryId()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/unisound/lib/audio/bean/AudioCategoryParam;->categoryId:Ljava/lang/String;

    return-object v0
.end method

.method public getPageNo()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/unisound/lib/audio/bean/AudioCategoryParam;->pageNo:Ljava/lang/String;

    return-object v0
.end method

.method public getPageSize()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/unisound/lib/audio/bean/AudioCategoryParam;->pageSize:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeAsc()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/unisound/lib/audio/bean/AudioCategoryParam;->timeAsc:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/unisound/lib/audio/bean/AudioCategoryParam;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setAlbumId(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/unisound/lib/audio/bean/AudioCategoryParam;->albumId:Ljava/lang/String;

    return-void
.end method

.method public setCategoryId(Ljava/lang/String;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/unisound/lib/audio/bean/AudioCategoryParam;->categoryId:Ljava/lang/String;

    return-void
.end method

.method public setPageNo(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/unisound/lib/audio/bean/AudioCategoryParam;->pageNo:Ljava/lang/String;

    return-void
.end method

.method public setPageSize(Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/unisound/lib/audio/bean/AudioCategoryParam;->pageSize:Ljava/lang/String;

    return-void
.end method

.method public setTimeAsc(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/unisound/lib/audio/bean/AudioCategoryParam;->timeAsc:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/unisound/lib/audio/bean/AudioCategoryParam;->type:Ljava/lang/String;

    return-void
.end method
