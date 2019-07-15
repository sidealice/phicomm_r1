.class public Lcom/phicomm/speaker/bean/player/LyricBean;
.super Ljava/lang/Object;
.source "LyricBean.java"


# instance fields
.field private line_lyric:Ljava/lang/String;

.field private time:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLine_lyric()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/phicomm/speaker/bean/player/LyricBean;->line_lyric:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/phicomm/speaker/bean/player/LyricBean;->time:Ljava/lang/String;

    return-object v0
.end method

.method public setLine_lyric(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/phicomm/speaker/bean/player/LyricBean;->line_lyric:Ljava/lang/String;

    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/phicomm/speaker/bean/player/LyricBean;->time:Ljava/lang/String;

    return-void
.end method
