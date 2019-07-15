.class Lcom/alibaba/sdk/android/feedback/impl/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alibaba/sdk/android/feedback/impl/ErrorPageActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/feedback/impl/ErrorPageActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/impl/b;->a:Lcom/alibaba/sdk/android/feedback/impl/ErrorPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/alibaba/sdk/android/feedback/impl/b;->a:Lcom/alibaba/sdk/android/feedback/impl/ErrorPageActivity;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/feedback/impl/ErrorPageActivity;->finish()V

    return-void
.end method
