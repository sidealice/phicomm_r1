.class Lcom/alibaba/sdk/android/feedback/windvane/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alibaba/sdk/android/feedback/windvane/d;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/feedback/windvane/d;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/windvane/g;->a:Lcom/alibaba/sdk/android/feedback/windvane/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/alibaba/sdk/android/feedback/windvane/g;->a:Lcom/alibaba/sdk/android/feedback/windvane/d;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/feedback/windvane/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void
.end method
