.class Lcom/xiaomi/channel/commonutils/c/g;
.super Lcom/xiaomi/channel/commonutils/c/f$b;


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/xiaomi/channel/commonutils/c/f;


# direct methods
.method constructor <init>(Lcom/xiaomi/channel/commonutils/c/f;Lcom/xiaomi/channel/commonutils/c/f$a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/channel/commonutils/c/g;->c:Lcom/xiaomi/channel/commonutils/c/f;

    iput-object p3, p0, Lcom/xiaomi/channel/commonutils/c/g;->b:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/xiaomi/channel/commonutils/c/f$b;-><init>(Lcom/xiaomi/channel/commonutils/c/f$a;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 0

    invoke-super {p0}, Lcom/xiaomi/channel/commonutils/c/f$b;->a()V

    return-void
.end method

.method b()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/channel/commonutils/c/g;->c:Lcom/xiaomi/channel/commonutils/c/f;

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/c/f;->a(Lcom/xiaomi/channel/commonutils/c/f;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/channel/commonutils/c/g;->b:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
