.class final Lcom/tencent/smtt/sdk/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/tencent/smtt/sdk/ValueCallback;


# direct methods
.method constructor <init>(Lcom/tencent/smtt/sdk/ValueCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/smtt/sdk/n;->a:Lcom/tencent/smtt/sdk/ValueCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/tencent/smtt/sdk/n;->a:Lcom/tencent/smtt/sdk/ValueCallback;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/smtt/sdk/n;->a:Lcom/tencent/smtt/sdk/ValueCallback;

    const-string v0, "TbsReaderDialogClosed"

    invoke-interface {p1, v0}, Lcom/tencent/smtt/sdk/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
