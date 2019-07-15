.class Lcom/phicomm/speaker/activity/player/MediaPlayerActivity$5;
.super Ljava/lang/Object;
.source "MediaPlayerActivity.java"

# interfaces
.implements Lcom/phicomm/speaker/presenter/mqtt/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;)V
    .locals 0

    .line 711
    iput-object p1, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity$5;->a:Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/phicomm/speaker/bean/mqtt/shadow/CommonConfigInfo;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 715
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity$5;->a:Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/mqtt/shadow/CommonConfigInfo;->getMusic_voluem()I

    move-result p1

    invoke-static {v0, p1}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->b(Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;I)I

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
