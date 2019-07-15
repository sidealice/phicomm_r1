.class final synthetic Lcom/phicomm/speaker/activity/quesandans/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity$2;

.field private final b:I


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity$2;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/activity/quesandans/e;->a:Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity$2;

    iput p2, p0, Lcom/phicomm/speaker/activity/quesandans/e;->b:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/e;->a:Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity$2;

    iget v1, p0, Lcom/phicomm/speaker/activity/quesandans/e;->b:I

    invoke-virtual {v0, v1, p1}, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity$2;->a(ILandroid/view/View;)V

    return-void
.end method
