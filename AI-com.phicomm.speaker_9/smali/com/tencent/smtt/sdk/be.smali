.class Lcom/tencent/smtt/sdk/be;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lcom/tencent/smtt/export/external/DexLoader;


# direct methods
.method public constructor <init>(Lcom/tencent/smtt/export/external/DexLoader;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/be;->a:Lcom/tencent/smtt/export/external/DexLoader;

    iput-object p1, p0, Lcom/tencent/smtt/sdk/be;->a:Lcom/tencent/smtt/export/external/DexLoader;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/tencent/smtt/sdk/be;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const-string v1, "com.tencent.tbs.player.TbsPlayerProxy"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ldalvik/system/DexClassLoader;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    iget-object p1, p0, Lcom/tencent/smtt/sdk/be;->a:Lcom/tencent/smtt/export/external/DexLoader;

    invoke-virtual {p1}, Lcom/tencent/smtt/export/external/DexLoader;->getClassLoader()Ldalvik/system/DexClassLoader;

    move-result-object p1

    aput-object p1, v2, v6

    invoke-virtual {v0, v1, v3, v2}, Lcom/tencent/smtt/export/external/DexLoader;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/tencent/smtt/sdk/be;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const-string v2, "com.tencent.tbs.player.TbsPlayerProxy"

    const-string v3, "onUserStateChanged"

    const/4 v1, 0x0

    new-array v4, v1, [Ljava/lang/Class;

    new-array v5, v1, [Ljava/lang/Object;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/smtt/export/external/DexLoader;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/Object;Landroid/app/Activity;I)V
    .locals 8

    iget-object v0, p0, Lcom/tencent/smtt/sdk/be;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const-string v2, "com.tencent.tbs.player.TbsPlayerProxy"

    const-string v3, "onActivity"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Landroid/app/Activity;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p2, v5, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v5, v7

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/smtt/export/external/DexLoader;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/Object;Landroid/os/Bundle;Landroid/widget/FrameLayout;Ljava/lang/Object;)Z
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p4, :cond_0

    iget-object v3, p0, Lcom/tencent/smtt/sdk/be;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const-string v5, "com.tencent.tbs.player.TbsPlayerProxy"

    const-string v6, "play"

    const/4 v4, 0x3

    new-array v7, v4, [Ljava/lang/Class;

    const-class v8, Landroid/os/Bundle;

    aput-object v8, v7, v2

    const-class v8, Landroid/widget/FrameLayout;

    aput-object v8, v7, v1

    const-class v8, Ljava/lang/Object;

    aput-object v8, v7, v0

    new-array v8, v4, [Ljava/lang/Object;

    aput-object p2, v8, v2

    aput-object p3, v8, v1

    aput-object p4, v8, v0

    :goto_0
    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/tencent/smtt/export/external/DexLoader;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/tencent/smtt/sdk/be;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const-string v5, "com.tencent.tbs.player.TbsPlayerProxy"

    const-string v6, "play"

    new-array v7, v0, [Ljava/lang/Class;

    const-class p4, Landroid/os/Bundle;

    aput-object p4, v7, v2

    const-class p4, Landroid/widget/FrameLayout;

    aput-object p4, v7, v1

    new-array v8, v0, [Ljava/lang/Object;

    aput-object p2, v8, v2

    aput-object p3, v8, v1

    goto :goto_0

    :goto_1
    instance-of p2, p1, Ljava/lang/Boolean;

    if-eqz p2, :cond_1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_1
    return v2
.end method
