.class public Lcom/baidu/location/a/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/a/c$1;,
        Lcom/baidu/location/a/c$d;,
        Lcom/baidu/location/a/c$a;,
        Lcom/baidu/location/a/c$c;,
        Lcom/baidu/location/a/c$b;
    }
.end annotation


# static fields
.field private static g:Ljava/lang/reflect/Method;

.field private static h:Ljava/lang/reflect/Method;

.field private static i:Ljava/lang/reflect/Method;

.field private static j:Ljava/lang/reflect/Method;

.field private static k:Ljava/lang/reflect/Method;

.field private static l:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Lcom/baidu/location/a/c$c;

.field private d:Landroid/content/Context;

.field private e:Landroid/telephony/TelephonyManager;

.field private f:Lcom/baidu/location/a/c$a;

.field private m:Landroid/net/wifi/WifiManager;

.field private n:Lcom/baidu/location/a/c$d;

.field private o:Ljava/lang/String;

.field private p:Lcom/baidu/location/h;

.field private q:Lcom/baidu/location/a/c$b;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/a/c;->g:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/baidu/location/a/c;->h:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/baidu/location/a/c;->i:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/baidu/location/a/c;->j:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/baidu/location/a/c;->k:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/baidu/location/a/c;->l:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/baidu/location/h;Lcom/baidu/location/a/c$b;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/baidu/location/a/c;->d:Landroid/content/Context;

    iput-object v1, p0, Lcom/baidu/location/a/c;->e:Landroid/telephony/TelephonyManager;

    new-instance v0, Lcom/baidu/location/a/c$a;

    invoke-direct {v0, p0, v1}, Lcom/baidu/location/a/c$a;-><init>(Lcom/baidu/location/a/c;Lcom/baidu/location/a/c$1;)V

    iput-object v0, p0, Lcom/baidu/location/a/c;->f:Lcom/baidu/location/a/c$a;

    iput-object v1, p0, Lcom/baidu/location/a/c;->m:Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/baidu/location/a/c;->n:Lcom/baidu/location/a/c$d;

    iput-object v1, p0, Lcom/baidu/location/a/c;->o:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/a/c;->r:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/a/c;->s:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/a/c;->t:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/a/c;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/a/c;->b:Ljava/lang/String;

    new-instance v0, Lcom/baidu/location/a/c$c;

    invoke-direct {v0, p0}, Lcom/baidu/location/a/c$c;-><init>(Lcom/baidu/location/a/c;)V

    iput-object v0, p0, Lcom/baidu/location/a/c;->c:Lcom/baidu/location/a/c$c;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/a/c;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/baidu/location/a/c;->p:Lcom/baidu/location/h;

    iput-object p3, p0, Lcom/baidu/location/a/c;->q:Lcom/baidu/location/a/c$b;

    iget-object v0, p0, Lcom/baidu/location/a/c;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/a/c;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/a/c;->b:Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Lcom/baidu/location/a/c;->d:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/baidu/location/a/c;->e:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/baidu/location/a/c;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/baidu/location/a/c;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/a/a/a/b/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/location/a/c;->b:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    iget-object v1, p0, Lcom/baidu/location/a/c;->b:Ljava/lang/String;

    if-eqz v1, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&prod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/a/c;->p:Lcom/baidu/location/h;

    iget-object v1, v1, Lcom/baidu/location/h;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/a/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|&cu="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/a/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&coor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/baidu/location/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/a/c;->o:Ljava/lang/String;

    :goto_2
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "&fw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "7.32"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "&lt=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "&mb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "&resid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "12"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Lcom/baidu/location/h;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :cond_0
    invoke-virtual {p2}, Lcom/baidu/location/h;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/baidu/location/h;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "all"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/location/a/c;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&addr=allj"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/a/c;->o:Ljava/lang/String;

    :cond_1
    iget-boolean v1, p2, Lcom/baidu/location/h;->o:Z

    if-eq v1, v3, :cond_2

    iget-boolean v1, p2, Lcom/baidu/location/h;->p:Z

    if-ne v1, v3, :cond_5

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/location/a/c;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&sema="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/a/c;->o:Ljava/lang/String;

    iget-boolean v1, p2, Lcom/baidu/location/h;->o:Z

    if-ne v1, v3, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/location/a/c;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "aptag|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/a/c;->o:Ljava/lang/String;

    :cond_3
    iget-boolean v1, p2, Lcom/baidu/location/h;->p:Z

    if-ne v1, v3, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/location/a/c;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "aptagd|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/a/c;->o:Ljava/lang/String;

    :cond_4
    iget-object v1, p0, Lcom/baidu/location/a/c;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/location/a/j;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/a/c;->s:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/location/a/c;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/location/a/j;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/a/c;->t:Ljava/lang/String;

    :cond_5
    const-string v1, "&first=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "&os=A"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/location/a/c;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/a/c;->o:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/a/c;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/baidu/location/a/c;->m:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Lcom/baidu/location/a/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, ":"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "020000000000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/location/a/c;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&mac="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/a/c;->o:Ljava/lang/String;

    :cond_7
    invoke-virtual {p0}, Lcom/baidu/location/a/c;->b()Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    move-object v0, v1

    goto/16 :goto_0

    :catch_1
    move-exception v2

    iput-object v1, p0, Lcom/baidu/location/a/c;->b:Ljava/lang/String;

    goto/16 :goto_1

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&prod="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/location/a/c;->p:Lcom/baidu/location/h;

    iget-object v2, v2, Lcom/baidu/location/h;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/location/a/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|&im="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&coor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/baidu/location/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/a/c;->o:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method private a(I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/baidu/location/a/c;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/location/a/c;->a(Landroid/telephony/CellLocation;)V

    iget-object v0, p0, Lcom/baidu/location/a/c;->f:Lcom/baidu/location/a/c$a;

    invoke-virtual {v0}, Lcom/baidu/location/a/c$a;->a()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    :try_start_1
    iput-object v2, p0, Lcom/baidu/location/a/c;->n:Lcom/baidu/location/a/c$d;

    new-instance v2, Lcom/baidu/location/a/c$d;

    iget-object v3, p0, Lcom/baidu/location/a/c;->m:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/baidu/location/a/c$d;-><init>(Lcom/baidu/location/a/c;Ljava/util/List;)V

    iput-object v2, p0, Lcom/baidu/location/a/c;->n:Lcom/baidu/location/a/c$d;

    iget-object v2, p0, Lcom/baidu/location/a/c;->n:Lcom/baidu/location/a/c$d;

    invoke-virtual {v2, p1}, Lcom/baidu/location/a/c$d;->a(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    :goto_1
    if-nez v0, :cond_2

    if-nez v2, :cond_2

    iput-object v1, p0, Lcom/baidu/location/a/c;->r:Ljava/lang/String;

    :cond_1
    :goto_2
    return-object v1

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v2, v1

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/baidu/location/a/c;->r:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/location/a/c;->o:Ljava/lang/String;

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/location/a/c;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/location/a/c;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/a/c;->r:Ljava/lang/String;

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/a/c;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method static synthetic a(Lcom/baidu/location/a/c;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/a/c;->s:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/telephony/CellLocation;)V
    .locals 8

    const v7, 0x7fffffff

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/baidu/location/a/c;->e:Landroid/telephony/TelephonyManager;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v3, Lcom/baidu/location/a/c$a;

    invoke-direct {v3, p0, v6}, Lcom/baidu/location/a/c$a;-><init>(Lcom/baidu/location/a/c;Lcom/baidu/location/a/c$1;)V

    iget-object v2, p0, Lcom/baidu/location/a/c;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    :try_start_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v5, :cond_3

    const/4 v2, 0x0

    const/4 v5, 0x3

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gez v2, :cond_2

    iget-object v2, p0, Lcom/baidu/location/a/c;->f:Lcom/baidu/location/a/c$a;

    iget v2, v2, Lcom/baidu/location/a/c$a;->c:I

    :cond_2
    iput v2, v3, Lcom/baidu/location/a/c$a;->c:I

    :cond_3
    const/4 v2, 0x3

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    :goto_1
    array-length v5, v4

    if-ge v1, v5, :cond_4

    aget-char v5, v4, v1

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_8

    :cond_4
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_5

    iget-object v1, p0, Lcom/baidu/location/a/c;->f:Lcom/baidu/location/a/c$a;

    iget v1, v1, Lcom/baidu/location/a/c$a;->d:I

    :cond_5
    iput v1, v3, Lcom/baidu/location/a/c$a;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :cond_6
    :goto_2
    instance-of v1, p1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v1, :cond_9

    move-object v1, p1

    check-cast v1, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    iput v1, v3, Lcom/baidu/location/a/c$a;->a:I

    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    iput v1, v3, Lcom/baidu/location/a/c$a;->b:I

    const/16 v1, 0x67

    iput-char v1, v3, Lcom/baidu/location/a/c$a;->g:C

    :cond_7
    :goto_3
    invoke-static {v3}, Lcom/baidu/location/a/c$a;->a(Lcom/baidu/location/a/c$a;)Z

    move-result v1

    if-eqz v1, :cond_d

    iput-object v3, p0, Lcom/baidu/location/a/c;->f:Lcom/baidu/location/a/c$a;

    goto :goto_0

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_9
    instance-of v1, p1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v1, :cond_7

    const/16 v1, 0x63

    iput-char v1, v3, Lcom/baidu/location/a/c$a;->g:C

    sget-object v1, Lcom/baidu/location/a/c;->l:Ljava/lang/Class;

    if-nez v1, :cond_a

    :try_start_1
    const-string v1, "android.telephony.cdma.CdmaCellLocation"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/baidu/location/a/c;->l:Ljava/lang/Class;

    sget-object v1, Lcom/baidu/location/a/c;->l:Ljava/lang/Class;

    const-string v2, "getBaseStationId"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/baidu/location/a/c;->g:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/baidu/location/a/c;->l:Ljava/lang/Class;

    const-string v2, "getNetworkId"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/baidu/location/a/c;->h:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/baidu/location/a/c;->l:Ljava/lang/Class;

    const-string v2, "getSystemId"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/baidu/location/a/c;->i:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/baidu/location/a/c;->l:Ljava/lang/Class;

    const-string v2, "getBaseStationLatitude"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/baidu/location/a/c;->j:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/baidu/location/a/c;->l:Ljava/lang/Class;

    const-string v2, "getBaseStationLongitude"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/baidu/location/a/c;->k:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_a
    sget-object v1, Lcom/baidu/location/a/c;->l:Ljava/lang/Class;

    if-eqz v1, :cond_7

    sget-object v1, Lcom/baidu/location/a/c;->l:Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :try_start_2
    sget-object v1, Lcom/baidu/location/a/c;->i:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_b

    iget-object v1, p0, Lcom/baidu/location/a/c;->f:Lcom/baidu/location/a/c$a;

    iget v1, v1, Lcom/baidu/location/a/c$a;->d:I

    :cond_b
    iput v1, v3, Lcom/baidu/location/a/c$a;->d:I

    sget-object v1, Lcom/baidu/location/a/c;->g:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v3, Lcom/baidu/location/a/c$a;->b:I

    sget-object v1, Lcom/baidu/location/a/c;->h:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v3, Lcom/baidu/location/a/c$a;->a:I

    sget-object v1, Lcom/baidu/location/a/c;->j:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/Integer;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v1, v7, :cond_c

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v3, Lcom/baidu/location/a/c$a;->e:I

    :cond_c
    sget-object v1, Lcom/baidu/location/a/c;->k:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/Integer;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v1, v7, :cond_7

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v3, Lcom/baidu/location/a/c$a;->f:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    sput-object v6, Lcom/baidu/location/a/c;->l:Ljava/lang/Class;

    goto/16 :goto_0

    :cond_d
    iput-object v6, p0, Lcom/baidu/location/a/c;->f:Lcom/baidu/location/a/c$a;

    goto/16 :goto_0

    :catch_2
    move-exception v1

    goto/16 :goto_2
.end method

.method static synthetic b(Lcom/baidu/location/a/c;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/a/c;->t:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/baidu/location/a/c;)Lcom/baidu/location/h;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/a/c;->p:Lcom/baidu/location/h;

    return-object v0
.end method

.method static synthetic d(Lcom/baidu/location/a/c;)Lcom/baidu/location/a/c$b;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/a/c;->q:Lcom/baidu/location/a/c$b;

    return-object v0
.end method

.method static synthetic e(Lcom/baidu/location/a/c;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/a/c;->m:Landroid/net/wifi/WifiManager;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/baidu/location/a/c;->m:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const/16 v0, 0xf

    :try_start_0
    invoke-direct {p0, v0}, Lcom/baidu/location/a/c;->a(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/a/c;->r:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/a/c;->f:Lcom/baidu/location/a/c$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/a/c;->c:Lcom/baidu/location/a/c$c;

    iget-object v1, p0, Lcom/baidu/location/a/c;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/location/a/c$c;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
