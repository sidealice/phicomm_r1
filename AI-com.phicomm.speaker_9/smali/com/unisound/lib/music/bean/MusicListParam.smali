.class public Lcom/unisound/lib/music/bean/MusicListParam;
.super Lcom/unisound/lib/msgcenter/bean/BaseInfo;
.source "MusicListParam.java"


# instance fields
.field private pageNo:Ljava/lang/String;

.field private pageSize:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/unisound/lib/msgcenter/bean/BaseInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getPageNo()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/unisound/lib/music/bean/MusicListParam;->pageNo:Ljava/lang/String;

    return-object v0
.end method

.method public getPageSize()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/unisound/lib/music/bean/MusicListParam;->pageSize:Ljava/lang/String;

    return-object v0
.end method

.method public setPageNo(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/unisound/lib/music/bean/MusicListParam;->pageNo:Ljava/lang/String;

    return-void
.end method

.method public setPageSize(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/unisound/lib/music/bean/MusicListParam;->pageSize:Ljava/lang/String;

    return-void
.end method
