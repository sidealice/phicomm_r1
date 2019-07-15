.class Lcom/phicomm/speaker/activity/yanry/confignet/BindGuideActivity_ViewBinding$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "BindGuideActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/yanry/confignet/BindGuideActivity_ViewBinding;-><init>(Lcom/phicomm/speaker/activity/yanry/confignet/BindGuideActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/yanry/confignet/BindGuideActivity;

.field final synthetic b:Lcom/phicomm/speaker/activity/yanry/confignet/BindGuideActivity_ViewBinding;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/yanry/confignet/BindGuideActivity_ViewBinding;Lcom/phicomm/speaker/activity/yanry/confignet/BindGuideActivity;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/phicomm/speaker/activity/yanry/confignet/BindGuideActivity_ViewBinding$2;->b:Lcom/phicomm/speaker/activity/yanry/confignet/BindGuideActivity_ViewBinding;

    iput-object p2, p0, Lcom/phicomm/speaker/activity/yanry/confignet/BindGuideActivity_ViewBinding$2;->a:Lcom/phicomm/speaker/activity/yanry/confignet/BindGuideActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 41
    iget-object p1, p0, Lcom/phicomm/speaker/activity/yanry/confignet/BindGuideActivity_ViewBinding$2;->a:Lcom/phicomm/speaker/activity/yanry/confignet/BindGuideActivity;

    invoke-virtual {p1}, Lcom/phicomm/speaker/activity/yanry/confignet/BindGuideActivity;->iv_bind_guide_back()V

    return-void
.end method
