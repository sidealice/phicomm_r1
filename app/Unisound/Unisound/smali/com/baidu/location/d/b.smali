.class public Lcom/baidu/location/d/b;
.super Ljava/lang/Object;


# static fields
.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field private static h:Lcom/baidu/location/d/b;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/d/b;->h:Lcom/baidu/location/d/b;

    sput-object v0, Lcom/baidu/location/d/b;->d:Ljava/lang/String;

    sput-object v0, Lcom/baidu/location/d/b;->e:Ljava/lang/String;

    sput-object v0, Lcom/baidu/location/d/b;->f:Ljava/lang/String;

    sput-object v0, Lcom/baidu/location/d/b;->g:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/d/b;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/d/b;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/d/b;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/d/b;->i:Z

    invoke-static {}, Lcom/baidu/location/f;->b()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baidu/location/f;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/location/d/b;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static a()Lcom/baidu/location/d/b;
    .locals 1

    sget-object v0, Lcom/baidu/location/d/b;->h:Lcom/baidu/location/d/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/location/d/b;

    invoke-direct {v0}, Lcom/baidu/location/d/b;-><init>()V

    sput-object v0, Lcom/baidu/location/d/b;->h:Lcom/baidu/location/d/b;

    :cond_0
    sget-object v0, Lcom/baidu/location/d/b;->h:Lcom/baidu/location/d/b;

    return-object v0
.end method


# virtual methods
.method public a(Z)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/baidu/location/d/b;->a(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(ZLjava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x6

    const/4 v5, 0x0

    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v0, 0x100

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v0, "&sdk="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const v0, 0x40ea3d71    # 7.32f

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    if-eqz p1, :cond_5

    sget-object v0, Lcom/baidu/location/d/j;->g:Ljava/lang/String;

    const-string v2, "all"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "&addr=allj"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    sget-boolean v0, Lcom/baidu/location/d/j;->h:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/baidu/location/d/j;->j:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/baidu/location/d/j;->k:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/baidu/location/d/j;->i:Z

    if-eqz v0, :cond_5

    :cond_1
    const-string v0, "&sema="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-boolean v0, Lcom/baidu/location/d/j;->h:Z

    if-eqz v0, :cond_2

    const-string v0, "aptag|"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    sget-boolean v0, Lcom/baidu/location/d/j;->i:Z

    if-eqz v0, :cond_3

    const-string v0, "aptagd|"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    sget-boolean v0, Lcom/baidu/location/d/j;->j:Z

    if-eqz v0, :cond_4

    const-string v0, "poiregion|"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    sget-boolean v0, Lcom/baidu/location/d/j;->k:Z

    if-eqz v0, :cond_5

    const-string v0, "regular"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    if-eqz p1, :cond_6

    if-nez p2, :cond_d

    const-string v0, "&coor=gcj02"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/baidu/location/d/b;->b:Ljava/lang/String;

    if-nez v0, :cond_e

    const-string v0, "&im="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/baidu/location/d/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/baidu/location/d/b;->c:Ljava/lang/String;

    if-eqz v0, :cond_8

    const-string v0, "&Aid="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/baidu/location/d/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8
    const-string v0, "&fw="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/baidu/location/f;->a()F

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    const-string v0, "&lt=1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "&mb="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/baidu/location/d/j;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string v2, "&laip="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9
    invoke-static {}, Lcom/baidu/location/a/l;->a()Lcom/baidu/location/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/a/l;->d()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_a

    const-string v2, "&altv="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%.5f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_a
    const-string v0, "&resid="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "12"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "&os=A"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p1, :cond_c

    const-string v0, "&sv="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v6, :cond_b

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_c
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_d
    const-string v0, "&coor="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :cond_e
    const-string v0, "&cu="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/baidu/location/d/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/baidu/location/d/b;->a:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/baidu/location/d/b;->a:Ljava/lang/String;

    const-string v2, "NULL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/baidu/location/d/b;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuffer;

    iget-object v3, p0, Lcom/baidu/location/d/b;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "&Aim="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/baidu/location/d/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/baidu/location/d/b;->i:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/d/b;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    invoke-static {p1}, Lcom/baidu/a/a/a/b/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/d/b;->b:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    invoke-static {p1}, Lcom/baidu/a/a/a/b/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/d/b;->c:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/location/d/b;->d:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/d/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/location/d/j;->n:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/d/b;->i:Z

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "NULL"

    iput-object v0, p0, Lcom/baidu/location/d/b;->a:Ljava/lang/String;

    goto :goto_1

    :catch_1
    move-exception v0

    iput-object v1, p0, Lcom/baidu/location/d/b;->b:Ljava/lang/String;

    goto :goto_2

    :catch_2
    move-exception v0

    iput-object v1, p0, Lcom/baidu/location/d/b;->c:Ljava/lang/String;

    goto :goto_3

    :catch_3
    move-exception v0

    sput-object v1, Lcom/baidu/location/d/b;->d:Ljava/lang/String;

    goto :goto_4
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/baidu/location/d/b;->e:Ljava/lang/String;

    sput-object p2, Lcom/baidu/location/d/b;->d:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/d/b;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "v7.32|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/d/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "v7.32|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/d/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/baidu/location/d/b;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/location/d/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/baidu/location/d/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/baidu/location/d/b;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
