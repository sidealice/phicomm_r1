.class public Lcom/unisound/lib/music/bean/DelMusicParam;
.super Lcom/unisound/lib/msgcenter/bean/BaseInfo;
.source "DelMusicParam.java"


# instance fields
.field private ids:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/unisound/lib/msgcenter/bean/BaseInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getIds()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/unisound/lib/music/bean/DelMusicParam;->ids:Ljava/lang/String;

    return-object v0
.end method

.method public setIds(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/unisound/lib/music/bean/DelMusicParam;->ids:Ljava/lang/String;

    return-void
.end method
