.class Lcom/xiaomi/push/service/ay;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# instance fields
.field final synthetic a:Lcom/xiaomi/push/service/ax;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/ax;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/service/ay;->a:Lcom/xiaomi/push/service/ax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 6

    if-eqz p1, :cond_5

    array-length v0, p1

    if-lez v0, :cond_5

    const/4 v0, 0x0

    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    if-eqz v3, :cond_0

    const-string v4, "com.xiaomi"

    iget-object v5, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    iget-object p1, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    iget-object p1, p0, Lcom/xiaomi/push/service/ay;->a:Lcom/xiaomi/push/service/ax;

    invoke-static {p1}, Lcom/xiaomi/push/service/ax;->a(Lcom/xiaomi/push/service/ax;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/push/service/az;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/az;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/push/service/az;->c()Z

    move-result p1

    if-eqz v0, :cond_3

    if-nez p1, :cond_3

    :goto_2
    iget-object p1, p0, Lcom/xiaomi/push/service/ay;->a:Lcom/xiaomi/push/service/ax;

    invoke-static {p1}, Lcom/xiaomi/push/service/ax;->a(Lcom/xiaomi/push/service/ax;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/push/service/az;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/az;

    move-result-object p1

    iget-object v0, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/service/az;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/xiaomi/push/service/ay;->a:Lcom/xiaomi/push/service/ax;

    iget-object v0, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    :goto_3
    invoke-static {p1, v0}, Lcom/xiaomi/push/service/ax;->a(Lcom/xiaomi/push/service/ax;Ljava/lang/String;)V

    return-void

    :cond_3
    if-nez v0, :cond_4

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/xiaomi/push/service/ay;->a:Lcom/xiaomi/push/service/ax;

    invoke-static {p1}, Lcom/xiaomi/push/service/ax;->a(Lcom/xiaomi/push/service/ax;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/push/service/az;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/az;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/push/service/az;->a()V

    iget-object p1, p0, Lcom/xiaomi/push/service/ay;->a:Lcom/xiaomi/push/service/ax;

    const-string v0, "0"

    goto :goto_3

    :cond_4
    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/xiaomi/push/service/ay;->a:Lcom/xiaomi/push/service/ax;

    invoke-static {p1}, Lcom/xiaomi/push/service/ax;->a(Lcom/xiaomi/push/service/ax;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/push/service/az;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/az;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/push/service/az;->b()Ljava/lang/String;

    move-result-object p1

    iget-object v0, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    return-void
.end method
