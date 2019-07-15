.class Lcom/phicomm/speaker/activity/MainActivity_ViewBinding$4;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "MainActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/MainActivity_ViewBinding;-><init>(Lcom/phicomm/speaker/activity/MainActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/MainActivity;

.field final synthetic b:Lcom/phicomm/speaker/activity/MainActivity_ViewBinding;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/MainActivity_ViewBinding;Lcom/phicomm/speaker/activity/MainActivity;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/phicomm/speaker/activity/MainActivity_ViewBinding$4;->b:Lcom/phicomm/speaker/activity/MainActivity_ViewBinding;

    iput-object p2, p0, Lcom/phicomm/speaker/activity/MainActivity_ViewBinding$4;->a:Lcom/phicomm/speaker/activity/MainActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 66
    iget-object p1, p0, Lcom/phicomm/speaker/activity/MainActivity_ViewBinding$4;->a:Lcom/phicomm/speaker/activity/MainActivity;

    invoke-virtual {p1}, Lcom/phicomm/speaker/activity/MainActivity;->rb_mine()V

    return-void
.end method
