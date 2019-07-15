.class Lcom/unisound/sdk/bm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unisound/b/a/c;


# instance fields
.field final synthetic a:Lcom/unisound/sdk/bg;


# direct methods
.method constructor <init>(Lcom/unisound/sdk/bg;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/bm;->a:Lcom/unisound/sdk/bg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v3, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpeechUnderstanderInterface init activate result= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "returnCode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/unisound/sdk/bm;->a:Lcom/unisound/sdk/bg;

    invoke-static {v2}, Lcom/unisound/sdk/bg;->b(Lcom/unisound/sdk/bg;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "ACTIVITY_FLAG"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "dc_0000"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, "activityFlag"

    const-string v3, "activity success"

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "token"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/unisound/sdk/bm;->a:Lcom/unisound/sdk/bg;

    iget-object v3, p0, Lcom/unisound/sdk/bm;->a:Lcom/unisound/sdk/bg;

    iget-object v3, v3, Lcom/unisound/sdk/bg;->x:Ljava/lang/String;

    iget-object v4, p0, Lcom/unisound/sdk/bm;->a:Lcom/unisound/sdk/bg;

    iget-object v4, v4, Lcom/unisound/sdk/bg;->x:Ljava/lang/String;

    invoke-static {v4}, Lcom/unisound/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4, v0}, Lcom/unisound/sdk/bg;->a(Lcom/unisound/sdk/bg;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/unisound/sdk/bm;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->n(Lcom/unisound/sdk/bg;)V

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/unisound/sdk/bm;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->i(Lcom/unisound/sdk/bg;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_1
    const-string v0, "USC"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "activate errorCode = "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lcom/unisound/common/y;->a(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "dc_0002"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unisound/sdk/bm;->a:Lcom/unisound/sdk/bg;

    invoke-virtual {v0}, Lcom/unisound/sdk/bg;->refreshActivate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v0, "dc_0006"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/unisound/sdk/bm;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->o(Lcom/unisound/sdk/bg;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/unisound/sdk/bm;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->p(Lcom/unisound/sdk/bg;)Lcom/unisound/b/a/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/unisound/b/a/a;->a(I)V

    iget-object v0, p0, Lcom/unisound/sdk/bm;->a:Lcom/unisound/sdk/bg;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/unisound/sdk/bg;->e(Lcom/unisound/sdk/bg;Z)Z

    goto :goto_0

    :cond_3
    const-string v0, "dc_0003"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/unisound/sdk/bm;->a:Lcom/unisound/sdk/bg;

    const v1, -0xf837

    invoke-static {v0, v1}, Lcom/unisound/sdk/bg;->b(Lcom/unisound/sdk/bg;I)V

    iget-object v0, p0, Lcom/unisound/sdk/bm;->a:Lcom/unisound/sdk/bg;

    const v1, -0x105bb

    invoke-static {v0, v1}, Lcom/unisound/sdk/bg;->b(Lcom/unisound/sdk/bg;I)V

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/unisound/sdk/bm;->a:Lcom/unisound/sdk/bg;

    iget-object v1, p0, Lcom/unisound/sdk/bm;->a:Lcom/unisound/sdk/bg;

    iget-object v1, v1, Lcom/unisound/sdk/bg;->x:Ljava/lang/String;

    iget-object v2, p0, Lcom/unisound/sdk/bm;->a:Lcom/unisound/sdk/bg;

    iget-object v2, v2, Lcom/unisound/sdk/bg;->x:Ljava/lang/String;

    invoke-static {v2}, Lcom/unisound/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/unisound/sdk/bg;->a(Lcom/unisound/sdk/bg;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v0, "dc_0004"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/unisound/sdk/bm;->a:Lcom/unisound/sdk/bg;

    const v1, -0xf837

    invoke-static {v0, v1}, Lcom/unisound/sdk/bg;->b(Lcom/unisound/sdk/bg;I)V

    iget-object v0, p0, Lcom/unisound/sdk/bm;->a:Lcom/unisound/sdk/bg;

    const v1, -0x105bc

    invoke-static {v0, v1}, Lcom/unisound/sdk/bg;->b(Lcom/unisound/sdk/bg;I)V

    goto :goto_1

    :cond_6
    const-string v0, "dc_0005"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/unisound/sdk/bm;->a:Lcom/unisound/sdk/bg;

    const v1, -0xf837

    invoke-static {v0, v1}, Lcom/unisound/sdk/bg;->b(Lcom/unisound/sdk/bg;I)V

    iget-object v0, p0, Lcom/unisound/sdk/bm;->a:Lcom/unisound/sdk/bg;

    const v1, -0x105bd

    invoke-static {v0, v1}, Lcom/unisound/sdk/bg;->b(Lcom/unisound/sdk/bg;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
