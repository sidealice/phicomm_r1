.class Lcom/phicomm/speaker/activity/RegisterCodeActivity_ViewBinding$3;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "RegisterCodeActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/RegisterCodeActivity_ViewBinding;-><init>(Lcom/phicomm/speaker/activity/RegisterCodeActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/RegisterCodeActivity;

.field final synthetic b:Lcom/phicomm/speaker/activity/RegisterCodeActivity_ViewBinding;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/RegisterCodeActivity_ViewBinding;Lcom/phicomm/speaker/activity/RegisterCodeActivity;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity_ViewBinding$3;->b:Lcom/phicomm/speaker/activity/RegisterCodeActivity_ViewBinding;

    iput-object p2, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity_ViewBinding$3;->a:Lcom/phicomm/speaker/activity/RegisterCodeActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 51
    iget-object p1, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity_ViewBinding$3;->a:Lcom/phicomm/speaker/activity/RegisterCodeActivity;

    invoke-virtual {p1}, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->tv_protocol()V

    return-void
.end method
