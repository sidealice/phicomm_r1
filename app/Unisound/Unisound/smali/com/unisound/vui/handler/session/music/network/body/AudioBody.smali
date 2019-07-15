.class public Lcom/unisound/vui/handler/session/music/network/body/AudioBody;
.super Ljava/lang/Object;
.source "AudioBody.java"


# instance fields
.field private albumId:Ljava/lang/String;

.field private code:Ljava/lang/String;

.field private keyword:Ljava/lang/String;

.field private pageNo:Ljava/lang/String;

.field private pageSize:Ljava/lang/String;

.field private udid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "udid"    # Ljava/lang/String;
    .param p2, "albumId"    # Ljava/lang/String;
    .param p3, "pageNo"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "30"

    iput-object v0, p0, Lcom/unisound/vui/handler/session/music/network/body/AudioBody;->pageSize:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcom/unisound/vui/handler/session/music/network/body/AudioBody;->udid:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/unisound/vui/handler/session/music/network/body/AudioBody;->albumId:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/unisound/vui/handler/session/music/network/body/AudioBody;->pageNo:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "udid"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "keyword"    # Ljava/lang/String;
    .param p4, "pageNo"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "30"

    iput-object v0, p0, Lcom/unisound/vui/handler/session/music/network/body/AudioBody;->pageSize:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/unisound/vui/handler/session/music/network/body/AudioBody;->udid:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/unisound/vui/handler/session/music/network/body/AudioBody;->code:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/unisound/vui/handler/session/music/network/body/AudioBody;->keyword:Ljava/lang/String;

    .line 31
    iput-object p4, p0, Lcom/unisound/vui/handler/session/music/network/body/AudioBody;->pageNo:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public getAlbumId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/network/body/AudioBody;->albumId:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/network/body/AudioBody;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/network/body/AudioBody;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public getPageNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/network/body/AudioBody;->pageNo:Ljava/lang/String;

    return-object v0
.end method

.method public getPageSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/network/body/AudioBody;->pageSize:Ljava/lang/String;

    return-object v0
.end method

.method public getUdid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/network/body/AudioBody;->udid:Ljava/lang/String;

    return-object v0
.end method

.method public setAlbumId(Ljava/lang/String;)V
    .locals 0
    .param p1, "albumId"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/unisound/vui/handler/session/music/network/body/AudioBody;->albumId:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/unisound/vui/handler/session/music/network/body/AudioBody;->code:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setKeyword(Ljava/lang/String;)V
    .locals 0
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/unisound/vui/handler/session/music/network/body/AudioBody;->keyword:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setPageNo(Ljava/lang/String;)V
    .locals 0
    .param p1, "pageNo"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/unisound/vui/handler/session/music/network/body/AudioBody;->pageNo:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setPageSize(Ljava/lang/String;)V
    .locals 0
    .param p1, "pageSize"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/unisound/vui/handler/session/music/network/body/AudioBody;->pageSize:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setUdid(Ljava/lang/String;)V
    .locals 0
    .param p1, "udid"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/unisound/vui/handler/session/music/network/body/AudioBody;->udid:Ljava/lang/String;

    .line 40
    return-void
.end method
