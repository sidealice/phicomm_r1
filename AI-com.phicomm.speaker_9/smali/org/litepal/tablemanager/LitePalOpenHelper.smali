.class Lorg/litepal/tablemanager/LitePalOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "LitePalOpenHelper.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "LitePalHelper"


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .line 78
    invoke-static {}, Lorg/litepal/LitePalApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Lorg/litepal/tablemanager/LitePalOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 83
    invoke-static {p1}, Lorg/litepal/tablemanager/Generator;->create(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 88
    invoke-static {p1}, Lorg/litepal/tablemanager/Generator;->upgrade(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 89
    invoke-static {}, Lorg/litepal/parser/LitePalAttr;->getInstance()Lorg/litepal/parser/LitePalAttr;

    move-result-object p1

    invoke-virtual {p1}, Lorg/litepal/parser/LitePalAttr;->getExtraKeyName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Lorg/litepal/util/SharedUtil;->updateVersion(Ljava/lang/String;I)V

    return-void
.end method
