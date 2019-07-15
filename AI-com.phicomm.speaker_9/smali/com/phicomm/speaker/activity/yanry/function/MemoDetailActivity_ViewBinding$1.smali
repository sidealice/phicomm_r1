.class Lcom/phicomm/speaker/activity/yanry/function/MemoDetailActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "MemoDetailActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/yanry/function/MemoDetailActivity_ViewBinding;-><init>(Lcom/phicomm/speaker/activity/yanry/function/MemoDetailActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/yanry/function/MemoDetailActivity;

.field final synthetic b:Lcom/phicomm/speaker/activity/yanry/function/MemoDetailActivity_ViewBinding;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/yanry/function/MemoDetailActivity_ViewBinding;Lcom/phicomm/speaker/activity/yanry/function/MemoDetailActivity;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/phicomm/speaker/activity/yanry/function/MemoDetailActivity_ViewBinding$1;->b:Lcom/phicomm/speaker/activity/yanry/function/MemoDetailActivity_ViewBinding;

    iput-object p2, p0, Lcom/phicomm/speaker/activity/yanry/function/MemoDetailActivity_ViewBinding$1;->a:Lcom/phicomm/speaker/activity/yanry/function/MemoDetailActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 27
    iget-object p1, p0, Lcom/phicomm/speaker/activity/yanry/function/MemoDetailActivity_ViewBinding$1;->a:Lcom/phicomm/speaker/activity/yanry/function/MemoDetailActivity;

    invoke-virtual {p1}, Lcom/phicomm/speaker/activity/yanry/function/MemoDetailActivity;->delete()V

    return-void
.end method
