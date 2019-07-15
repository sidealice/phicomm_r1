.class public Lorg/greenrobot/greendao/query/WhereCondition$StringCondition;
.super Lorg/greenrobot/greendao/query/WhereCondition$AbstractCondition;
.source "WhereCondition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/greenrobot/greendao/query/WhereCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringCondition"
.end annotation


# instance fields
.field protected final string:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 147
    invoke-direct {p0}, Lorg/greenrobot/greendao/query/WhereCondition$AbstractCondition;-><init>()V

    .line 148
    iput-object p1, p0, Lorg/greenrobot/greendao/query/WhereCondition$StringCondition;->string:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 152
    invoke-direct {p0, p2}, Lorg/greenrobot/greendao/query/WhereCondition$AbstractCondition;-><init>(Ljava/lang/Object;)V

    .line 153
    iput-object p1, p0, Lorg/greenrobot/greendao/query/WhereCondition$StringCondition;->string:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/Object;

    .prologue
    .line 157
    invoke-direct {p0, p2}, Lorg/greenrobot/greendao/query/WhereCondition$AbstractCondition;-><init>([Ljava/lang/Object;)V

    .line 158
    iput-object p1, p0, Lorg/greenrobot/greendao/query/WhereCondition$StringCondition;->string:Ljava/lang/String;

    .line 159
    return-void
.end method


# virtual methods
.method public appendTo(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "tableAlias"    # Ljava/lang/String;

    .prologue
    .line 163
    iget-object v0, p0, Lorg/greenrobot/greendao/query/WhereCondition$StringCondition;->string:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    return-void
.end method
