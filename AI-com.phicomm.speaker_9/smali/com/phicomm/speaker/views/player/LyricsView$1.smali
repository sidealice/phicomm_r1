.class Lcom/phicomm/speaker/views/player/LyricsView$1;
.super Ljava/lang/Object;
.source "LyricsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/views/player/LyricsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/views/player/LyricsView;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/views/player/LyricsView;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/phicomm/speaker/views/player/LyricsView$1;->a:Lcom/phicomm/speaker/views/player/LyricsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/phicomm/speaker/views/player/LyricsView$1;->a:Lcom/phicomm/speaker/views/player/LyricsView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/phicomm/speaker/views/player/LyricsView;->a(Lcom/phicomm/speaker/views/player/LyricsView;Z)Z

    .line 67
    iget-object v0, p0, Lcom/phicomm/speaker/views/player/LyricsView$1;->a:Lcom/phicomm/speaker/views/player/LyricsView;

    iget-object v2, p0, Lcom/phicomm/speaker/views/player/LyricsView$1;->a:Lcom/phicomm/speaker/views/player/LyricsView;

    invoke-static {v2}, Lcom/phicomm/speaker/views/player/LyricsView;->a(Lcom/phicomm/speaker/views/player/LyricsView;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/views/player/LyricsView;->smoothScrollTo(II)V

    return-void
.end method
