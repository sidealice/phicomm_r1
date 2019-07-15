.class Lcom/phicomm/speaker/activity/quesandans/UserDefinedQaActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "UserDefinedQaActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/quesandans/UserDefinedQaActivity_ViewBinding;-><init>(Lcom/phicomm/speaker/activity/quesandans/UserDefinedQaActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/quesandans/UserDefinedQaActivity;

.field final synthetic b:Lcom/phicomm/speaker/activity/quesandans/UserDefinedQaActivity_ViewBinding;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/quesandans/UserDefinedQaActivity_ViewBinding;Lcom/phicomm/speaker/activity/quesandans/UserDefinedQaActivity;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/phicomm/speaker/activity/quesandans/UserDefinedQaActivity_ViewBinding$1;->b:Lcom/phicomm/speaker/activity/quesandans/UserDefinedQaActivity_ViewBinding;

    iput-object p2, p0, Lcom/phicomm/speaker/activity/quesandans/UserDefinedQaActivity_ViewBinding$1;->a:Lcom/phicomm/speaker/activity/quesandans/UserDefinedQaActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 31
    iget-object p1, p0, Lcom/phicomm/speaker/activity/quesandans/UserDefinedQaActivity_ViewBinding$1;->a:Lcom/phicomm/speaker/activity/quesandans/UserDefinedQaActivity;

    invoke-virtual {p1}, Lcom/phicomm/speaker/activity/quesandans/UserDefinedQaActivity;->tv_choiceness()V

    return-void
.end method
