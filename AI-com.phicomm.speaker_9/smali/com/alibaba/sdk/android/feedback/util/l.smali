.class final Lcom/alibaba/sdk/android/feedback/util/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/sdk/android/feedback/util/IUnreadCountCallback;


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/util/l;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/alibaba/sdk/android/feedback/util/l;->a:Landroid/content/Context;

    const/4 p2, 0x0

    invoke-static {p2, p1}, Lcom/alibaba/sdk/android/feedback/util/k;->a(ZLandroid/content/Context;)V

    return-void
.end method

.method public onSuccess(I)V
    .locals 1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    :goto_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/util/l;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/alibaba/sdk/android/feedback/util/k;->a(ZLandroid/content/Context;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    return-void
.end method
