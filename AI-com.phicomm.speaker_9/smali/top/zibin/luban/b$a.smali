.class public Ltop/zibin/luban/b$a;
.super Ljava/lang/Object;
.source "Luban.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/zibin/luban/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/io/File;

.field private c:Ltop/zibin/luban/c;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p1, p0, Ltop/zibin/luban/b$a;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Ltop/zibin/luban/b$a;)Ljava/io/File;
    .locals 0

    .line 139
    iget-object p0, p0, Ltop/zibin/luban/b$a;->b:Ljava/io/File;

    return-object p0
.end method

.method private b()Ltop/zibin/luban/b;
    .locals 2

    .line 149
    new-instance v0, Ltop/zibin/luban/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ltop/zibin/luban/b;-><init>(Ltop/zibin/luban/b$a;Ltop/zibin/luban/b$1;)V

    return-object v0
.end method

.method static synthetic b(Ltop/zibin/luban/b$a;)Ltop/zibin/luban/c;
    .locals 0

    .line 139
    iget-object p0, p0, Ltop/zibin/luban/b$a;->c:Ltop/zibin/luban/c;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/io/File;)Ltop/zibin/luban/b$a;
    .locals 0

    .line 153
    iput-object p1, p0, Ltop/zibin/luban/b$a;->b:Ljava/io/File;

    return-object p0
.end method

.method public a(Ltop/zibin/luban/c;)Ltop/zibin/luban/b$a;
    .locals 0

    .line 162
    iput-object p1, p0, Ltop/zibin/luban/b$a;->c:Ltop/zibin/luban/c;

    return-object p0
.end method

.method public a()V
    .locals 2

    .line 167
    invoke-direct {p0}, Ltop/zibin/luban/b$a;->b()Ltop/zibin/luban/b;

    move-result-object v0

    iget-object v1, p0, Ltop/zibin/luban/b$a;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Ltop/zibin/luban/b;->b(Ltop/zibin/luban/b;Landroid/content/Context;)V

    return-void
.end method
