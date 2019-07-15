.class public abstract Lcom/unisound/vui/data/c/c$b;
.super Lorg/greenrobot/greendao/database/DatabaseOpenHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/vui/data/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Lorg/greenrobot/greendao/database/Database;)V
    .locals 2
    .param p1, "db"    # Lorg/greenrobot/greendao/database/Database;

    .prologue
    const-string v0, "greenDAO"

    const-string v1, "Creating tables for schema version 1"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/unisound/vui/data/c/c;->a(Lorg/greenrobot/greendao/database/Database;Z)V

    return-void
.end method
