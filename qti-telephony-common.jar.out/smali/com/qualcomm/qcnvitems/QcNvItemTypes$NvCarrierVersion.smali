.class public Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCarrierVersion;
.super Lcom/qualcomm/qcnvitems/BaseQCNvItemType;
.source "QcNvItemTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcnvitems/QcNvItemTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NvCarrierVersion"
.end annotation


# instance fields
.field private mCarrierVersion:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1333
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQCNvItemType;-><init>()V

    .line 1334
    const/16 v0, 0x7c

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCarrierVersion;->mCarrierVersion:[B

    .line 1333
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "carrierVersion"    # Ljava/lang/String;

    .prologue
    .line 1348
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQCNvItemType;-><init>()V

    .line 1351
    const/16 v0, 0x7c

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCarrierVersion;->mCarrierVersion:[B

    .line 1352
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCarrierVersion;->mCarrierVersion:[B

    .line 1348
    return-void
.end method

.method constructor <init>([B)V
    .locals 5
    .param p1, "bArray"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x7c

    .line 1337
    invoke-direct {p0}, Lcom/qualcomm/qcnvitems/BaseQCNvItemType;-><init>()V

    .line 1339
    new-array v2, v4, [B

    iput-object v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCarrierVersion;->mCarrierVersion:[B

    .line 1341
    invoke-virtual {p0, p1}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCarrierVersion;->createByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1343
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 1344
    iget-object v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCarrierVersion;->mCarrierVersion:[B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    aput-byte v3, v2, v1

    .line 1343
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1337
    :cond_0
    return-void
.end method


# virtual methods
.method public getCarrierVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1357
    const-string/jumbo v1, ""

    .line 1358
    .local v1, "ret":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x7c

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCarrierVersion;->mCarrierVersion:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1359
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCarrierVersion;->mCarrierVersion:[B

    aget-byte v3, v3, v0

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1358
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1360
    :cond_0
    return-object v1
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 1371
    const/16 v0, 0x7c

    return v0
.end method

.method public toByteArray()[B
    .locals 3

    .prologue
    .line 1364
    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCarrierVersion;->getSize()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCarrierVersion;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1365
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x7c

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCarrierVersion;->mCarrierVersion:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 1366
    iget-object v2, p0, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCarrierVersion;->mCarrierVersion:[B

    aget-byte v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1365
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1367
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method

.method public toDebugString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1375
    const-string/jumbo v0, "NvCarrierVersion:%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/qualcomm/qcnvitems/QcNvItemTypes$NvCarrierVersion;->getCarrierVersion()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
