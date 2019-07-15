.class Lcom/phicomm/speaker/activity/player/MediaPlayerActivity$1;
.super Ljava/lang/Object;
.source "MediaPlayerActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->a()V
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

    .line 192
    iput-object p1, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity$1;->a:Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity$1;->a:Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;

    invoke-static {v0, p1}, Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;->a(Lcom/phicomm/speaker/activity/player/MediaPlayerActivity;I)V

    return-void
.end method
