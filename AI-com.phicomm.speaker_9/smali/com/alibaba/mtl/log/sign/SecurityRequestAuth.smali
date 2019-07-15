.class public Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;
.super Ljava/lang/Object;
.source "SecurityRequestAuth.java"

# interfaces
.implements Lcom/alibaba/mtl/log/sign/IRequestAuth;


# instance fields
.field private D:Z

.field private Z:Ljava/lang/String;

.field private a:Ljava/lang/Class;

.field private a:Ljava/lang/reflect/Field;

.field private a:Ljava/lang/reflect/Method;

.field private b:Ljava/lang/Object;

.field private b:Ljava/lang/String;

.field private b:Ljava/lang/reflect/Field;

.field private c:Ljava/lang/Object;

.field private c:Ljava/lang/reflect/Field;

.field private z:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->b:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->b:Ljava/lang/Object;

    .line 40
    iput-object v0, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->c:Ljava/lang/Object;

    .line 41
    iput-object v0, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->a:Ljava/lang/Class;

    .line 42
    iput-object v0, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->a:Ljava/lang/reflect/Field;

    .line 43
    iput-object v0, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->b:Ljava/lang/reflect/Field;

    .line 44
    iput-object v0, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->c:Ljava/lang/reflect/Field;

    .line 45
    iput-object v0, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->a:Ljava/lang/reflect/Method;

    const/4 v0, 0x1

    .line 46
    iput v0, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->z:I

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->D:Z

    .line 35
    iput-object p1, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->b:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->Z:Ljava/lang/String;

    return-void
.end method

.method private declared-synchronized F()V
    .locals 7

    monitor-enter p0

    .line 51
    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->D:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 52
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_1
    const-string v3, "com.alibaba.wireless.security.open.SecurityGuardManager"

    .line 56
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v4, "getInstance"

    .line 57
    new-array v5, v1, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 58
    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/alibaba/mtl/log/a;->getContext()Landroid/content/Context;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->b:Ljava/lang/Object;

    const-string v4, "getSecureSignatureComp"

    .line 60
    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 61
    iget-object v5, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->b:Ljava/lang/Object;

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->c:Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_0

    :catch_1
    move-exception v4

    move-object v3, v0

    :goto_0
    :try_start_3
    const-string v5, "SecurityRequestAuth"

    const-string v6, "initSecurityCheck"

    .line 63
    invoke-static {v5, v6, v4}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    if-eqz v3, :cond_4

    :try_start_4
    const-string v4, "com.alibaba.wireless.security.open.SecurityGuardParamContext"

    .line 67
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->a:Ljava/lang/Class;

    .line 68
    iget-object v4, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->a:Ljava/lang/Class;

    const-string v5, "appKey"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->a:Ljava/lang/reflect/Field;

    .line 69
    iget-object v4, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->a:Ljava/lang/Class;

    const-string v5, "paramMap"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->b:Ljava/lang/reflect/Field;

    .line 70
    iget-object v4, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->a:Ljava/lang/Class;

    const-string v5, "requestType"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->c:Ljava/lang/reflect/Field;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    const-string v4, "isOpen"

    .line 75
    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v3

    :try_start_6
    const-string v4, "SecurityRequestAuth"

    const-string v5, "initSecurityCheck"

    .line 77
    invoke-static {v4, v5, v3}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object v3, v0

    :goto_2
    if-eqz v3, :cond_1

    .line 81
    iget-object v0, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->b:Ljava/lang/Object;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    :cond_1
    :try_start_7
    const-string v3, "com.taobao.wireless.security.sdk.securitybody.ISecurityBodyComponent"

    .line 86
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object v0, v3

    goto :goto_3

    :catch_3
    move-exception v3

    :try_start_8
    const-string v4, "SecurityRequestAuth"

    const-string v5, "initSecurityCheck"

    .line 88
    invoke-static {v4, v5, v3}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_3
    if-nez v0, :cond_2

    move v0, v1

    goto :goto_4

    :cond_2
    move v0, v2

    :goto_4
    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_5

    :cond_3
    const/16 v0, 0xc

    .line 95
    :goto_5
    iput v0, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->z:I

    const-string v0, "com.alibaba.wireless.security.open.securesignature.ISecureSignatureComponent"

    .line 97
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "signRequest"

    const/4 v4, 0x2

    .line 98
    new-array v4, v4, [Ljava/lang/Class;

    iget-object v5, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->a:Ljava/lang/Class;

    aput-object v5, v4, v2

    const-class v2, Ljava/lang/String;

    aput-object v2, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->a:Ljava/lang/reflect/Method;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_6

    :catch_4
    move-exception v0

    :try_start_9
    const-string v2, "SecurityRequestAuth"

    const-string v3, "initSecurityCheck"

    .line 101
    invoke-static {v2, v3, v0}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 103
    :cond_4
    :goto_6
    iput-boolean v1, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->D:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 104
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 50
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getAppkey()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getSign(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 110
    iget-boolean v0, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->D:Z

    if-nez v0, :cond_0

    .line 111
    invoke-direct {p0}, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->F()V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->b:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    const-string p1, "SecurityRequestAuth"

    .line 115
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "There is no appkey,please check it!"

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v3

    :cond_1
    if-nez p1, :cond_2

    return-object v3

    .line 124
    :cond_2
    iget-object v0, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->b:Ljava/lang/Object;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->a:Ljava/lang/Class;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->a:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->b:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->c:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->c:Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 129
    iget-object v4, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->a:Ljava/lang/reflect/Field;

    iget-object v5, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->b:Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 130
    iget-object v4, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v5, "INPUT"

    .line 131
    invoke-interface {v4, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object p1, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->c:Ljava/lang/reflect/Field;

    iget v4, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->z:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v0, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 135
    iget-object p1, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->a:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->c:Ljava/lang/Object;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v1

    iget-object v0, p0, Lcom/alibaba/mtl/log/sign/SecurityRequestAuth;->Z:Ljava/lang/String;

    aput-object v0, v5, v2

    invoke-virtual {p1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 139
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_3
    move-object p1, v3

    :goto_0
    return-object p1
.end method
