.class Lcom/phicomm/speaker/activity/player/PlayListActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "PlayListActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/player/PlayListActivity_ViewBinding;-><init>(Lcom/phicomm/speaker/activity/player/PlayListActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/player/PlayListActivity;

.field final synthetic b:Lcom/phicomm/speaker/activity/player/PlayListActivity_ViewBinding;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/player/PlayListActivity_ViewBinding;Lcom/phicomm/speaker/activity/player/PlayListActivity;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity_ViewBinding$1;->b:Lcom/phicomm/speaker/activity/player/PlayListActivity_ViewBinding;

    iput-object p2, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity_ViewBinding$1;->a:Lcom/phicomm/speaker/activity/player/PlayListActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 39
    iget-object p1, p0, Lcom/phicomm/speaker/activity/player/PlayListActivity_ViewBinding$1;->a:Lcom/phicomm/speaker/activity/player/PlayListActivity;

    invoke-virtual {p1}, Lcom/phicomm/speaker/activity/player/PlayListActivity;->clickLoadListFailedLayout()V

    return-void
.end method
