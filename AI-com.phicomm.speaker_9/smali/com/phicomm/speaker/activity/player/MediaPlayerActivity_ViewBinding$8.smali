.class Lcom/phicomm/speaker/activity/player/MediaPlayerActivity_ViewBinding$8;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "MediaPlayerActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/player/MediaPlayerActivity_ViewBinding;-><init>(Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;

.field final synthetic b:Lcom/phicomm/speaker/activity/player/MediaPlayerActivity_ViewBinding;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/player/MediaPlayerActivity_ViewBinding;Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity_ViewBinding$8;->b:Lcom/phicomm/speaker/activity/player/MediaPlayerActivity_ViewBinding;

    iput-object p2, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity_ViewBinding$8;->a:Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 124
    iget-object p1, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity_ViewBinding$8;->a:Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;

    invoke-virtual {p1}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->ivVolume()V

    return-void
.end method
