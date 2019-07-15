.class public Lcom/unisound/ant/device/bean/RequestInfo$PageInfo;
.super Ljava/lang/Object;
.source "RequestInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/ant/device/bean/RequestInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PageInfo"
.end annotation


# instance fields
.field private albumId:Ljava/lang/String;

.field private pageNo:Ljava/lang/String;

.field private pageSize:Ljava/lang/String;

.field private timeAsc:Ljava/lang/String;

.field private udid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "pageNo"    # Ljava/lang/String;
    .param p2, "pageSize"    # Ljava/lang/String;
    .param p3, "udid"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/unisound/ant/device/bean/RequestInfo$PageInfo;->pageNo:Ljava/lang/String;

    .line 98
    iput-object p2, p0, Lcom/unisound/ant/device/bean/RequestInfo$PageInfo;->pageSize:Ljava/lang/String;

    .line 99
    iput-object p3, p0, Lcom/unisound/ant/device/bean/RequestInfo$PageInfo;->udid:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "pageNo"    # Ljava/lang/String;
    .param p2, "pageSize"    # Ljava/lang/String;
    .param p3, "udid"    # Ljava/lang/String;
    .param p4, "albumId"    # Ljava/lang/String;
    .param p5, "timeAsc"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/unisound/ant/device/bean/RequestInfo$PageInfo;->pageNo:Ljava/lang/String;

    .line 103
    iput-object p2, p0, Lcom/unisound/ant/device/bean/RequestInfo$PageInfo;->pageSize:Ljava/lang/String;

    .line 104
    iput-object p3, p0, Lcom/unisound/ant/device/bean/RequestInfo$PageInfo;->udid:Ljava/lang/String;

    .line 105
    iput-object p4, p0, Lcom/unisound/ant/device/bean/RequestInfo$PageInfo;->albumId:Ljava/lang/String;

    .line 106
    iput-object p5, p0, Lcom/unisound/ant/device/bean/RequestInfo$PageInfo;->timeAsc:Ljava/lang/String;

    .line 107
    return-void
.end method


# virtual methods
.method public getAlbumId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/unisound/ant/device/bean/RequestInfo$PageInfo;->albumId:Ljava/lang/String;

    return-object v0
.end method

.method public getPageNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/unisound/ant/device/bean/RequestInfo$PageInfo;->pageNo:Ljava/lang/String;

    return-object v0
.end method

.method public getPageSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/unisound/ant/device/bean/RequestInfo$PageInfo;->pageSize:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeAsc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/unisound/ant/device/bean/RequestInfo$PageInfo;->timeAsc:Ljava/lang/String;

    return-object v0
.end method

.method public getUdid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/unisound/ant/device/bean/RequestInfo$PageInfo;->udid:Ljava/lang/String;

    return-object v0
.end method

.method public setAlbumId(Ljava/lang/String;)V
    .locals 0
    .param p1, "albumId"    # Ljava/lang/String;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/unisound/ant/device/bean/RequestInfo$PageInfo;->albumId:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setPageNo(Ljava/lang/String;)V
    .locals 0
    .param p1, "pageNo"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/unisound/ant/device/bean/RequestInfo$PageInfo;->pageNo:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setPageSize(Ljava/lang/String;)V
    .locals 0
    .param p1, "pageSize"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/unisound/ant/device/bean/RequestInfo$PageInfo;->pageSize:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setTimeAsc(Ljava/lang/String;)V
    .locals 0
    .param p1, "timeAsc"    # Ljava/lang/String;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/unisound/ant/device/bean/RequestInfo$PageInfo;->timeAsc:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setUdid(Ljava/lang/String;)V
    .locals 0
    .param p1, "udid"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/unisound/ant/device/bean/RequestInfo$PageInfo;->udid:Ljava/lang/String;

    .line 131
    return-void
.end method
