.class public Lnluparser/scheme/AudioResult;
.super Ljava/lang/Object;
.source "AudioResult.java"

# interfaces
.implements Lnluparser/scheme/Result;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnluparser/scheme/AudioResult$Music;
    }
.end annotation


# instance fields
.field cover:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "cover"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cover"
    .end annotation
.end field

.field coverLarge:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "cover_large"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cover_large"
    .end annotation
.end field

.field description:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "description"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "description"
    .end annotation
.end field

.field id:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "id"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field page:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "page"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "page"
    .end annotation
.end field

.field pageSize:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "pagesize"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pagesize"
    .end annotation
.end field

.field playlist:Ljava/util/List;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "playlist"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "playlist"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnluparser/scheme/AudioResult$Music;",
            ">;"
        }
    .end annotation
.end field

.field source:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "source"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "source"
    .end annotation
.end field

.field title:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "title"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field

.field total:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "total"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "total"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCover()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lnluparser/scheme/AudioResult;->cover:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverLarge()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lnluparser/scheme/AudioResult;->coverLarge:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lnluparser/scheme/AudioResult;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lnluparser/scheme/AudioResult;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getPage()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lnluparser/scheme/AudioResult;->page:Ljava/lang/String;

    return-object v0
.end method

.method public getPageSize()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lnluparser/scheme/AudioResult;->pageSize:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaylist()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnluparser/scheme/AudioResult$Music;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lnluparser/scheme/AudioResult;->playlist:Ljava/util/List;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lnluparser/scheme/AudioResult;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lnluparser/scheme/AudioResult;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTotal()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lnluparser/scheme/AudioResult;->total:Ljava/lang/String;

    return-object v0
.end method

.method public setCover(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lnluparser/scheme/AudioResult;->cover:Ljava/lang/String;

    return-void
.end method

.method public setCoverLarge(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lnluparser/scheme/AudioResult;->coverLarge:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lnluparser/scheme/AudioResult;->description:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lnluparser/scheme/AudioResult;->id:Ljava/lang/String;

    return-void
.end method

.method public setPage(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lnluparser/scheme/AudioResult;->page:Ljava/lang/String;

    return-void
.end method

.method public setPageSize(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lnluparser/scheme/AudioResult;->pageSize:Ljava/lang/String;

    return-void
.end method

.method public setPlaylist(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnluparser/scheme/AudioResult$Music;",
            ">;)V"
        }
    .end annotation

    .line 108
    iput-object p1, p0, Lnluparser/scheme/AudioResult;->playlist:Ljava/util/List;

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lnluparser/scheme/AudioResult;->source:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lnluparser/scheme/AudioResult;->title:Ljava/lang/String;

    return-void
.end method

.method public setTotal(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lnluparser/scheme/AudioResult;->total:Ljava/lang/String;

    return-void
.end method
