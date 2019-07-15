.class public abstract Lcom/huawei/hms/update/d/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/huawei/hms/update/d/a/a;


# instance fields
.field protected final a:Landroid/content/Context;

.field private b:Landroid/app/Dialog;

.field private c:Lcom/huawei/hms/update/d/a/a$a;

.field private d:Lcom/huawei/hms/update/d/a/a$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "context must not be null."

    invoke-static {p1, v0}, Lcom/huawei/hms/a/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/huawei/hms/update/d/e;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/huawei/hms/update/d/e;->a()Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/update/d/e;->b:Landroid/app/Dialog;

    iget-object p1, p0, Lcom/huawei/hms/update/d/e;->b:Landroid/app/Dialog;

    const-string v0, "onCreateDialog must not be return null."

    invoke-static {p1, v0}, Lcom/huawei/hms/a/a;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/huawei/hms/update/d/e;->b:Landroid/app/Dialog;

    new-instance v0, Lcom/huawei/hms/update/d/f;

    invoke-direct {v0, p0}, Lcom/huawei/hms/update/d/f;-><init>(Lcom/huawei/hms/update/d/e;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method


# virtual methods
.method protected abstract a()Landroid/app/Dialog;
.end method

.method public a(Lcom/huawei/hms/update/d/a/a$a;)Lcom/huawei/hms/update/d/a/a;
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/update/d/e;->c:Lcom/huawei/hms/update/d/a/a$a;

    return-object p0
.end method

.method public a(Lcom/huawei/hms/update/d/a/a$b;)Lcom/huawei/hms/update/d/a/a;
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/update/d/e;->d:Lcom/huawei/hms/update/d/a/a$b;

    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    const-string p1, "CustomDialog"

    const-string v0, "unsupported."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/huawei/hms/update/d/e;->b:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/huawei/hms/update/d/e;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/update/d/e;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/hms/update/d/e;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/update/d/e;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/hms/update/d/e;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method protected e()V
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/update/d/e;->c:Lcom/huawei/hms/update/d/a/a$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/hms/update/d/e;->c:Lcom/huawei/hms/update/d/a/a$a;

    invoke-interface {v0, p0}, Lcom/huawei/hms/update/d/a/a$a;->a(Lcom/huawei/hms/update/d/a/a;)V

    :cond_0
    return-void
.end method

.method protected f()V
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/update/d/e;->d:Lcom/huawei/hms/update/d/a/a$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/hms/update/d/e;->d:Lcom/huawei/hms/update/d/a/a$b;

    invoke-interface {v0, p0}, Lcom/huawei/hms/update/d/a/a$b;->a(Lcom/huawei/hms/update/d/a/a;)V

    :cond_0
    return-void
.end method
