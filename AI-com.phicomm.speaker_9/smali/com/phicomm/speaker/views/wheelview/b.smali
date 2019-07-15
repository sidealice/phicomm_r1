.class final Lcom/phicomm/speaker/views/wheelview/b;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "LoopViewGestureListener.java"


# instance fields
.field final a:Lcom/phicomm/speaker/views/wheelview/WheelView;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/views/wheelview/WheelView;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/phicomm/speaker/views/wheelview/b;->a:Lcom/phicomm/speaker/views/wheelview/WheelView;

    return-void
.end method


# virtual methods
.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 15
    iget-object p1, p0, Lcom/phicomm/speaker/views/wheelview/b;->a:Lcom/phicomm/speaker/views/wheelview/WheelView;

    invoke-virtual {p1, p4}, Lcom/phicomm/speaker/views/wheelview/WheelView;->a(F)V

    const/4 p1, 0x1

    return p1
.end method
