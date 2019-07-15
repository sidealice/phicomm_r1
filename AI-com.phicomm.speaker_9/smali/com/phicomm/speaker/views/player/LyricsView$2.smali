.class Lcom/phicomm/speaker/views/player/LyricsView$2;
.super Landroid/support/v7/widget/RecyclerView;
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
.field final synthetic J:Lcom/phicomm/speaker/views/player/LyricsView;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/views/player/LyricsView;Landroid/content/Context;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/phicomm/speaker/views/player/LyricsView$2;->J:Lcom/phicomm/speaker/views/player/LyricsView;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    const p2, 0x1fffffff

    const/high16 v0, -0x80000000

    .line 76
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 78
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->onMeasure(II)V

    return-void
.end method
