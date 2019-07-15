.class public Lcom/unisound/lib/music/bean/MusicCollectParam;
.super Lcom/unisound/lib/msgcenter/bean/BaseInfo;
.source "MusicCollectParam.java"


# instance fields
.field private id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/unisound/lib/msgcenter/bean/BaseInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/unisound/lib/music/bean/MusicCollectParam;->id:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/unisound/lib/music/bean/MusicCollectParam;->id:Ljava/lang/String;

    return-void
.end method
