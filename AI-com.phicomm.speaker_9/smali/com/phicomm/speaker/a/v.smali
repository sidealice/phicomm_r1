.class public Lcom/phicomm/speaker/a/v;
.super Ljava/lang/Object;
.source "MusicPlayStatusChangeEvent.java"


# instance fields
.field private a:Lcom/phicomm/speaker/bean/player/MusicPlayStatus;


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/bean/player/MusicPlayStatus;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/phicomm/speaker/a/v;->a:Lcom/phicomm/speaker/bean/player/MusicPlayStatus;

    return-void
.end method


# virtual methods
.method public a()Lcom/phicomm/speaker/bean/player/MusicPlayStatus;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/phicomm/speaker/a/v;->a:Lcom/phicomm/speaker/bean/player/MusicPlayStatus;

    return-object v0
.end method
