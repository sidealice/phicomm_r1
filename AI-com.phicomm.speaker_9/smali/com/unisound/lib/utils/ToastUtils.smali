.class public Lcom/unisound/lib/utils/ToastUtils;
.super Ljava/lang/Object;
.source "ToastUtils.java"


# static fields
.field private static toast:Landroid/widget/Toast;

.field private static view:Landroid/view/View;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelToast()V
    .locals 1

    .line 106
    sget-object v0, Lcom/unisound/lib/utils/ToastUtils;->toast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 107
    sget-object v0, Lcom/unisound/lib/utils/ToastUtils;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    return-void
.end method

.method private static getToast(Landroid/content/Context;)V
    .locals 2

    .line 26
    sget-object v0, Lcom/unisound/lib/utils/ToastUtils;->toast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/unisound/lib/utils/ToastUtils;->toast:Landroid/widget/Toast;

    .line 29
    :cond_0
    sget-object v0, Lcom/unisound/lib/utils/ToastUtils;->view:Landroid/view/View;

    if-nez v0, :cond_1

    const-string v0, ""

    const/4 v1, 0x0

    .line 30
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object p0

    sput-object p0, Lcom/unisound/lib/utils/ToastUtils;->view:Landroid/view/View;

    .line 32
    :cond_1
    sget-object p0, Lcom/unisound/lib/utils/ToastUtils;->toast:Landroid/widget/Toast;

    sget-object v0, Lcom/unisound/lib/utils/ToastUtils;->view:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    return-void
.end method

.method public static showLongToast(Landroid/content/Context;I)V
    .locals 1

    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/unisound/lib/utils/ToastUtils;->showToast(Landroid/content/Context;II)V

    return-void
.end method

.method public static showLongToast(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 1

    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/unisound/lib/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public static showShortToast(Landroid/content/Context;I)V
    .locals 1

    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/unisound/lib/utils/ToastUtils;->showToast(Landroid/content/Context;II)V

    return-void
.end method

.method public static showShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 1

    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/unisound/lib/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method private static showToast(Landroid/content/Context;II)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 92
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/unisound/lib/utils/ToastUtils;->getToast(Landroid/content/Context;)V

    .line 93
    sget-object p0, Lcom/unisound/lib/utils/ToastUtils;->toast:Landroid/widget/Toast;

    invoke-virtual {p0, p1}, Landroid/widget/Toast;->setText(I)V

    .line 94
    sget-object p0, Lcom/unisound/lib/utils/ToastUtils;->toast:Landroid/widget/Toast;

    invoke-virtual {p0, p2}, Landroid/widget/Toast;->setDuration(I)V

    .line 95
    sget-object p0, Lcom/unisound/lib/utils/ToastUtils;->toast:Landroid/widget/Toast;

    const/16 p1, 0x11

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p2}, Landroid/widget/Toast;->setGravity(III)V

    .line 96
    sget-object p0, Lcom/unisound/lib/utils/ToastUtils;->toast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 98
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/unisound/lib/utils/LogMgr;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static showToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    .locals 0

    .line 77
    :try_start_0
    invoke-static {p0}, Lcom/unisound/lib/utils/ToastUtils;->getToast(Landroid/content/Context;)V

    .line 78
    sget-object p0, Lcom/unisound/lib/utils/ToastUtils;->toast:Landroid/widget/Toast;

    invoke-virtual {p0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 79
    sget-object p0, Lcom/unisound/lib/utils/ToastUtils;->toast:Landroid/widget/Toast;

    invoke-virtual {p0, p2}, Landroid/widget/Toast;->setDuration(I)V

    .line 80
    sget-object p0, Lcom/unisound/lib/utils/ToastUtils;->toast:Landroid/widget/Toast;

    const/16 p1, 0x11

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p2}, Landroid/widget/Toast;->setGravity(III)V

    .line 81
    sget-object p0, Lcom/unisound/lib/utils/ToastUtils;->toast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 83
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/unisound/lib/utils/LogMgr;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
