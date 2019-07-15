.class public Lcom/tencent/smtt/sdk/p;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/tencent/smtt/export/external/DexLoader;

.field private b:Lcom/tencent/smtt/sdk/TbsReaderView$ReaderCallback;


# direct methods
.method public constructor <init>(Lcom/tencent/smtt/sdk/TbsReaderView$ReaderCallback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/p;->a:Lcom/tencent/smtt/export/external/DexLoader;

    iput-object v0, p0, Lcom/tencent/smtt/sdk/p;->b:Lcom/tencent/smtt/sdk/TbsReaderView$ReaderCallback;

    invoke-static {}, Lcom/tencent/smtt/sdk/p;->b()Lcom/tencent/smtt/export/external/DexLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/p;->a:Lcom/tencent/smtt/export/external/DexLoader;

    iput-object p1, p0, Lcom/tencent/smtt/sdk/p;->b:Lcom/tencent/smtt/sdk/TbsReaderView$ReaderCallback;

    return-void
.end method

.method public static a(I)Landroid/graphics/drawable/Drawable;
    .locals 7

    invoke-static {}, Lcom/tencent/smtt/sdk/p;->b()Lcom/tencent/smtt/export/external/DexLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "com.tencent.tbs.reader.TbsReader"

    const-string v2, "getResDrawable"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Integer;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v6

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/graphics/drawable/Drawable;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 7

    invoke-static {}, Lcom/tencent/smtt/sdk/p;->b()Lcom/tencent/smtt/export/external/DexLoader;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "com.tencent.tbs.reader.TbsReader"

    const-string v3, "isSupportCurrentPlatform"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v1

    invoke-virtual {v0, v2, v3, v5, v4}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_0
    return v1
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 7

    invoke-static {}, Lcom/tencent/smtt/sdk/p;->b()Lcom/tencent/smtt/export/external/DexLoader;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "com.tencent.tbs.reader.TbsReader"

    const-string v3, "isSupportExt"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v1

    invoke-virtual {v0, v2, v3, v5, v4}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_0
    return v1
.end method

.method private static b()Lcom/tencent/smtt/export/external/DexLoader;
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tencent/smtt/sdk/q;->a(Z)Lcom/tencent/smtt/sdk/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/q;->c()Lcom/tencent/smtt/sdk/bd;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bd;->b()Lcom/tencent/smtt/export/external/DexLoader;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static b(I)Ljava/lang/String;
    .locals 8

    const-string v0, ""

    invoke-static {}, Lcom/tencent/smtt/sdk/p;->b()Lcom/tencent/smtt/export/external/DexLoader;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "com.tencent.tbs.reader.TbsReader"

    const-string v3, "getResString"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Integer;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v7

    invoke-virtual {v1, v2, v3, v5, v4}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/tencent/smtt/sdk/p;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const-string v1, "com.tencent.tbs.reader.TbsReader"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3, v2}, Lcom/tencent/smtt/export/external/DexLoader;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 7

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/p;->b:Lcom/tencent/smtt/sdk/TbsReaderView$ReaderCallback;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/p;->a:Lcom/tencent/smtt/export/external/DexLoader;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/tencent/smtt/sdk/p;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const-string v3, "com.tencent.tbs.reader.TbsReader"

    const-string v4, "destroy"

    const/4 v0, 0x0

    new-array v5, v0, [Ljava/lang/Class;

    new-array v6, v0, [Ljava/lang/Object;

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/tencent/smtt/export/external/DexLoader;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    :goto_0
    const-string p1, "ReaderWizard"

    const-string v0, "destroy:Unexpect null object!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Ljava/lang/Object;II)V
    .locals 8

    iget-object v0, p0, Lcom/tencent/smtt/sdk/p;->a:Lcom/tencent/smtt/export/external/DexLoader;

    if-nez v0, :cond_0

    const-string p1, "ReaderWizard"

    const-string p2, "onSizeChanged:Unexpect null object!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/p;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const-string v2, "com.tencent.tbs.reader.TbsReader"

    const-string v3, "onSizeChanged"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Integer;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/Integer;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    new-array v5, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v5, v6

    new-instance p2, Ljava/lang/Integer;

    invoke-direct {p2, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object p2, v5, v7

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/smtt/export/external/DexLoader;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Integer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    iget-object v0, p0, Lcom/tencent/smtt/sdk/p;->a:Lcom/tencent/smtt/export/external/DexLoader;

    if-nez v0, :cond_0

    const-string p1, "ReaderWizard"

    const-string p2, "doCommand:Unexpect null object!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/p;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const-string v2, "com.tencent.tbs.reader.TbsReader"

    const-string v3, "doCommand"

    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Integer;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/Object;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-class v5, Ljava/lang/Object;

    const/4 v8, 0x2

    aput-object v5, v4, v8

    new-array v5, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v5, v6

    aput-object p3, v5, v7

    aput-object p4, v5, v8

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/smtt/export/external/DexLoader;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/tencent/smtt/sdk/p;->a:Lcom/tencent/smtt/export/external/DexLoader;

    if-nez v0, :cond_0

    const-string p1, "ReaderWizard"

    const-string p2, "userStatistics:Unexpect null object!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/p;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const-string v2, "com.tencent.tbs.reader.TbsReader"

    const-string v3, "userStatistics"

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p2, v5, v6

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/smtt/export/external/DexLoader;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/Object;Landroid/content/Context;)Z
    .locals 9

    iget-object v0, p0, Lcom/tencent/smtt/sdk/p;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/tencent/smtt/sdk/p;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const-string v4, "com.tencent.tbs.reader.TbsReader"

    const-string v5, "init"

    const/4 v0, 0x3

    new-array v6, v0, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v6, v1

    const-class v3, Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v7, 0x1

    aput-object v3, v6, v7

    const-class v3, Ljava/lang/Object;

    const/4 v8, 0x2

    aput-object v3, v6, v8

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v1

    iget-object p2, p0, Lcom/tencent/smtt/sdk/p;->a:Lcom/tencent/smtt/export/external/DexLoader;

    aput-object p2, v0, v7

    aput-object p0, v0, v8

    move-object v3, p1

    move-object v7, v0

    invoke-virtual/range {v2 .. v7}, Lcom/tencent/smtt/export/external/DexLoader;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/Boolean;

    if-nez p2, :cond_1

    const-string p1, "ReaderWizard"

    const-string p2, "Unexpect return value type of call initTbsReader!"

    :goto_0
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_2
    :goto_1
    const-string p1, "ReaderWizard"

    const-string p2, "initTbsReader:Unexpect null object!"

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;Landroid/content/Context;Landroid/os/Bundle;Landroid/widget/FrameLayout;)Z
    .locals 9

    iget-object v0, p0, Lcom/tencent/smtt/sdk/p;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "ReaderWizard"

    const-string p2, "openFile:Unexpect null object!"

    :goto_0
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v2, p0, Lcom/tencent/smtt/sdk/p;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const-string v4, "com.tencent.tbs.reader.TbsReader"

    const-string v5, "openFile"

    const/4 v0, 0x3

    new-array v6, v0, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v6, v1

    const-class v3, Landroid/os/Bundle;

    const/4 v7, 0x1

    aput-object v3, v6, v7

    const-class v3, Landroid/widget/FrameLayout;

    const/4 v8, 0x2

    aput-object v3, v6, v8

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v1

    aput-object p3, v0, v7

    aput-object p4, v0, v8

    move-object v3, p1

    move-object v7, v0

    invoke-virtual/range {v2 .. v7}, Lcom/tencent/smtt/export/external/DexLoader;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/Boolean;

    if-nez p2, :cond_1

    const-string p1, "ReaderWizard"

    const-string p2, "Unexpect return value type of call openFile!"

    goto :goto_0

    :cond_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 9

    iget-object v0, p0, Lcom/tencent/smtt/sdk/p;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "ReaderWizard"

    const-string p2, "checkPlugin:Unexpect null object!"

    :goto_0
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v2, p0, Lcom/tencent/smtt/sdk/p;->a:Lcom/tencent/smtt/export/external/DexLoader;

    const-string v4, "com.tencent.tbs.reader.TbsReader"

    const-string v5, "checkPlugin"

    const/4 v0, 0x3

    new-array v6, v0, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v6, v1

    const-class v3, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v3, v6, v7

    const-class v3, Ljava/lang/Boolean;

    const/4 v8, 0x2

    aput-object v3, v6, v8

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v1

    aput-object p3, v0, v7

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v0, v8

    move-object v3, p1

    move-object v7, v0

    invoke-virtual/range {v2 .. v7}, Lcom/tencent/smtt/export/external/DexLoader;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/Boolean;

    if-nez p2, :cond_1

    const-string p1, "ReaderWizard"

    const-string p2, "Unexpect return value type of call checkPlugin!"

    goto :goto_0

    :cond_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method
