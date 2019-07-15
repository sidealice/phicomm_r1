.class public Lcom/alibaba/sdk/android/feedback/a/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String; = null

.field private static b:Ljava/lang/String; = null

.field private static c:Ljava/lang/String; = null

.field private static d:Ljava/lang/String; = null

.field private static e:Ljava/lang/String; = null

.field private static f:Ljava/lang/String; = null

.field private static g:Ljava/lang/String; = null

.field private static h:Ljava/lang/String; = null

.field private static i:Landroid/content/Context; = null

.field private static j:Ljava/lang/String; = "https://feedback-api.aliyuncs.com"

.field private static k:Ljava/lang/String; = "http://feedback-api.aliyuncs.com"

.field private static l:Ljava/lang/String; = "http://feedback-api.aliyuncs.com"

.field private static m:I = 0x0

.field private static n:F = 0.0f

.field private static o:Z = true

.field private static p:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(F)V
    .locals 0

    sput p0, Lcom/alibaba/sdk/android/feedback/a/b;->n:F

    return-void
.end method

.method public static a(I)V
    .locals 0

    sput p0, Lcom/alibaba/sdk/android/feedback/a/b;->m:I

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lcom/alibaba/sdk/android/feedback/a/b;->i:Landroid/content/Context;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/alibaba/sdk/android/feedback/a/b;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Z)V
    .locals 0

    sput-boolean p0, Lcom/alibaba/sdk/android/feedback/a/b;->o:Z

    return-void
.end method

.method public static a()Z
    .locals 1

    sget-boolean v0, Lcom/alibaba/sdk/android/feedback/a/b;->o:Z

    return v0
.end method

.method public static b()F
    .locals 1

    sget v0, Lcom/alibaba/sdk/android/feedback/a/b;->n:F

    return v0
.end method

.method public static b(I)V
    .locals 0

    sput p0, Lcom/alibaba/sdk/android/feedback/a/b;->p:I

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/alibaba/sdk/android/feedback/a/b;->b:Ljava/lang/String;

    return-void
.end method

.method public static c()I
    .locals 1

    sget v0, Lcom/alibaba/sdk/android/feedback/a/b;->m:I

    return v0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/alibaba/sdk/android/feedback/a/b;->c:Ljava/lang/String;

    return-void
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alibaba/sdk/android/feedback/a/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/alibaba/sdk/android/feedback/a/b;->d:Ljava/lang/String;

    return-void
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alibaba/sdk/android/feedback/a/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static e(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/alibaba/sdk/android/feedback/a/b;->g:Ljava/lang/String;

    return-void
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alibaba/sdk/android/feedback/a/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static f(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/alibaba/sdk/android/feedback/a/b;->h:Ljava/lang/String;

    return-void
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alibaba/sdk/android/feedback/a/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static g(Ljava/lang/String;)V
    .locals 1

    sget v0, Lcom/alibaba/sdk/android/feedback/a/b;->p:I

    packed-switch v0, :pswitch_data_0

    sput-object p0, Lcom/alibaba/sdk/android/feedback/a/b;->j:Ljava/lang/String;

    return-void

    :pswitch_0
    sput-object p0, Lcom/alibaba/sdk/android/feedback/a/b;->l:Ljava/lang/String;

    return-void

    :pswitch_1
    sput-object p0, Lcom/alibaba/sdk/android/feedback/a/b;->k:Ljava/lang/String;

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static h()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alibaba/sdk/android/feedback/a/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static i()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alibaba/sdk/android/feedback/a/b;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static j()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alibaba/sdk/android/feedback/a/b;->h:Ljava/lang/String;

    return-object v0
.end method

.method public static k()Ljava/lang/String;
    .locals 1

    sget v0, Lcom/alibaba/sdk/android/feedback/a/b;->p:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "https://feedback-api.aliyuncs.com"

    return-object v0

    :pswitch_0
    const-string v0, "http://feedback-api.aliyuncs.com"

    return-object v0

    :pswitch_1
    const-string v0, "http://feedback-api.aliyuncs.com"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static l()Ljava/lang/String;
    .locals 1

    sget v0, Lcom/alibaba/sdk/android/feedback/a/b;->p:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/alibaba/sdk/android/feedback/a/b;->j:Ljava/lang/String;

    return-object v0

    :pswitch_0
    sget-object v0, Lcom/alibaba/sdk/android/feedback/a/b;->l:Ljava/lang/String;

    return-object v0

    :pswitch_1
    sget-object v0, Lcom/alibaba/sdk/android/feedback/a/b;->k:Ljava/lang/String;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static m()I
    .locals 1

    sget v0, Lcom/alibaba/sdk/android/feedback/a/b;->p:I

    return v0
.end method

.method public static n()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/alibaba/sdk/android/feedback/a/b;->i:Landroid/content/Context;

    return-object v0
.end method
