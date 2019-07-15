.class Lcom/phicomm/speaker/activity/CropImageActivity_ViewBinding$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "CropImageActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/CropImageActivity_ViewBinding;-><init>(Lcom/phicomm/speaker/activity/CropImageActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/CropImageActivity;

.field final synthetic b:Lcom/phicomm/speaker/activity/CropImageActivity_ViewBinding;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/CropImageActivity_ViewBinding;Lcom/phicomm/speaker/activity/CropImageActivity;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/phicomm/speaker/activity/CropImageActivity_ViewBinding$2;->b:Lcom/phicomm/speaker/activity/CropImageActivity_ViewBinding;

    iput-object p2, p0, Lcom/phicomm/speaker/activity/CropImageActivity_ViewBinding$2;->a:Lcom/phicomm/speaker/activity/CropImageActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 37
    iget-object p1, p0, Lcom/phicomm/speaker/activity/CropImageActivity_ViewBinding$2;->a:Lcom/phicomm/speaker/activity/CropImageActivity;

    invoke-virtual {p1}, Lcom/phicomm/speaker/activity/CropImageActivity;->tv_complete()V

    return-void
.end method
