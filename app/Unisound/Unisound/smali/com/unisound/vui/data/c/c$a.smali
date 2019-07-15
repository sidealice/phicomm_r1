.class public Lcom/unisound/vui/data/c/c$a;
.super Lcom/unisound/vui/data/c/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/vui/data/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/unisound/vui/data/c/c$b;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    return-void
.end method


# virtual methods
.method public onUpgrade(Lorg/greenrobot/greendao/database/Database;II)V
    .locals 4
    .param p1, "db"    # Lorg/greenrobot/greendao/database/Database;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    const-string v0, "greenDAO"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading schema from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " by dropping all tables"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-ge p2, p3, :cond_0

    invoke-static {}, Lcom/unisound/vui/data/e/a;->a()Lcom/unisound/vui/data/e/a;

    move-result-object v0

    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/unisound/vui/data/c/a;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lcom/unisound/vui/data/c/b;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Lcom/unisound/vui/data/c/e;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Lcom/unisound/vui/data/c/f;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Lcom/unisound/vui/data/c/a/e;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-class v3, Lcom/unisound/vui/data/c/a/f;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-class v3, Lcom/unisound/vui/data/c/a/b;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-class v3, Lcom/unisound/vui/data/c/a/a;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-class v3, Lcom/unisound/vui/data/c/a/g;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-class v3, Lcom/unisound/vui/data/c/a/d;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-class v3, Lcom/unisound/vui/data/c/a/c;

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/unisound/vui/data/e/a;->a(Lorg/greenrobot/greendao/database/Database;[Ljava/lang/Class;)V

    :cond_0
    return-void
.end method
