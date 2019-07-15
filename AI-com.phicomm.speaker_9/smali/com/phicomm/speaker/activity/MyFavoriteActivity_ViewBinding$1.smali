.class Lcom/phicomm/speaker/activity/MyFavoriteActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "MyFavoriteActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/MyFavoriteActivity_ViewBinding;-><init>(Lcom/phicomm/speaker/activity/MyFavoriteActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/MyFavoriteActivity;

.field final synthetic b:Lcom/phicomm/speaker/activity/MyFavoriteActivity_ViewBinding;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/MyFavoriteActivity_ViewBinding;Lcom/phicomm/speaker/activity/MyFavoriteActivity;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/phicomm/speaker/activity/MyFavoriteActivity_ViewBinding$1;->b:Lcom/phicomm/speaker/activity/MyFavoriteActivity_ViewBinding;

    iput-object p2, p0, Lcom/phicomm/speaker/activity/MyFavoriteActivity_ViewBinding$1;->a:Lcom/phicomm/speaker/activity/MyFavoriteActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 32
    iget-object p1, p0, Lcom/phicomm/speaker/activity/MyFavoriteActivity_ViewBinding$1;->a:Lcom/phicomm/speaker/activity/MyFavoriteActivity;

    invoke-virtual {p1}, Lcom/phicomm/speaker/activity/MyFavoriteActivity;->tv_music()V

    return-void
.end method
