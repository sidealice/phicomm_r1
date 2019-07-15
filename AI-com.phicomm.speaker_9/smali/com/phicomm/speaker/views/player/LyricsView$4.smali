.class Lcom/phicomm/speaker/views/player/LyricsView$4;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "LyricsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/views/player/LyricsView;-><init>(Landroid/content/Context;)V
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

    .line 95
    iput-object p1, p0, Lcom/phicomm/speaker/views/player/LyricsView$4;->a:Lcom/phicomm/speaker/views/player/LyricsView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/phicomm/speaker/views/player/LyricsView$4;->a:Lcom/phicomm/speaker/views/player/LyricsView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/views/player/LyricsView;->a(Lcom/phicomm/speaker/views/player/LyricsView;Z)Z

    .line 100
    iget-object v0, p0, Lcom/phicomm/speaker/views/player/LyricsView$4;->a:Lcom/phicomm/speaker/views/player/LyricsView;

    iget-object v1, p0, Lcom/phicomm/speaker/views/player/LyricsView$4;->a:Lcom/phicomm/speaker/views/player/LyricsView;

    invoke-static {v1}, Lcom/phicomm/speaker/views/player/LyricsView;->b(Lcom/phicomm/speaker/views/player/LyricsView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/player/LyricsView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 102
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method
